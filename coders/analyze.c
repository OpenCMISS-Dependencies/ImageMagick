/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%                                                                             %
%                                                                             %
%                  A     N   N     A     L     Y   Y ZZZZZ EEEEE              %
%                 A A    NN  N    A A    L      Y Y     Z  E                  %
%                AAAAA   N N N   AAAAA   L       Y     Z   EEE                %
%               A     A  N  NN  A     A  L       Y    Z    E                  %
%              A       A N   N A       A LLLLL   Y   ZZZZZ EEEEE              %
%                                                                             %
%                                                                             %
%                       Read/Write Analyze Image Format                       %
%                                                                             %
%                              Software Design                                %
%                                John Cristy                                  %
%                            Glenn Randers-Pehrson                            %
%                               December 2001                                 %
%                                                                             %
%                                                                             %
%  Copyright 1999-2011 ImageMagick Studio LLC, a non-profit organization      %
%  dedicated to making software imaging solutions freely available.           %
%                                                                             %
%  You may not use this file except in compliance with the License.  You may  %
%  obtain a copy of the License at                                            %
%                                                                             %
%    http://www.imagemagick.org/script/license.php                            %
%                                                                             %
%  Unless required by applicable law or agreed to in writing, software        %
%  distributed under the License is distributed on an "AS IS" BASIS,          %
%  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   %
%  See the License for the specific language governing permissions and        %
%  limitations under the License.                                             %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
*/

/*
  Include declarations.
*/
#include "MagickCore/studio.h"
#include "MagickCore/blob.h"
#include "MagickCore/blob-private.h"
#include "MagickCore/cache.h"
#include "MagickCore/colormap-private.h"
#include "MagickCore/color-private.h"
#include "MagickCore/colormap.h"
#include "MagickCore/colorspace.h"
#include "MagickCore/exception.h"
#include "MagickCore/exception-private.h"
#include "MagickCore/image.h"
#include "MagickCore/image-private.h"
#include "MagickCore/list.h"
#include "MagickCore/log.h"
#include "MagickCore/magick.h"
#include "MagickCore/memory_.h"
#include "MagickCore/monitor.h"
#include "MagickCore/monitor-private.h"
#include "MagickCore/pixel-accessor.h"
#include "MagickCore/profile.h"
#include "MagickCore/quantum-private.h"
#include "MagickCore/static.h"
#include "MagickCore/string_.h"
#include "MagickCore/module.h"
#include "MagickCore/transform.h"
#include "MagickCore/option.h"

/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%                                                                             %
%                                                                             %
%   R e a d A n a l y z e I m a g e                                           %
%                                                                             %
%                                                                             %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  ReadAnalyzeImage() reads an Analyze image file, Version
%  2, 3 (for Windows or NT), or 4, and  returns it.  It allocates the memory
%  necessary for the new Image structure and returns a pointer to the new
%  image.
%
%  The format of the ReadAnalyzeImage method is:
%
%      image=ReadAnalyzeImage(image_info, &exception)
%
%  A description of each parameter follows:
%
%    o image_info: the image info.
%
%    o exception: return any errors or warnings in this structure.
%
*/

static Image *ReadAnalyzeImage(const ImageInfo *image_info,ExceptionInfo *exception)
{
  Image
	*canvas_image = 0,
	*image = 0;

  Quantum
	index;

  MagickBooleanType
	status;

  MagickOffsetType
	offset,
	start_position;

  register Quantum
	*indexes;

  register ssize_t
	i,
	x;

  QuantumAny
	range;

  QuantumFormatType
	quantum_format;

  QuantumInfo
	*quantum_info;

  QuantumType
	quantum_type;

  MagickSizeType
	number_pixels;

  size_t
	bit,
	blue,
	bytes_per_line,
	green,
	length,
	opacity,
	red;

  ssize_t
	count,
	y;

  const char
	*value;

  unsigned char
	*pixels;

  /*
	Open image file.
  */
  assert(image_info != (const ImageInfo *) NULL);
  assert(image_info->signature == MagickCoreSignature);
  if (image_info->debug != MagickFalse)
	(void) LogMagickEvent(TraceEvent,GetMagickModule(),"%s",
	  image_info->filename);
  assert(exception != (ExceptionInfo *) NULL);
  assert(exception->signature == MagickCoreSignature);
  image=AcquireImage(image_info, exception);
  status=OpenBlob(image_info,image,ReadBinaryBlobMode,exception);
  if (status == MagickFalse)
  {
	image=DestroyImageList(image);
	return((Image *) NULL);
  }
  if (image_info->size)
	{
	  RectangleInfo
		geometry;

	  MagickStatusType
		flags;

	  flags=ParseAbsoluteGeometry(image_info->size,&geometry);
	  if (flags & WidthValue)
		if ((geometry.width != 0) && (geometry.width < image->columns))
		  image->columns=geometry.width;
	  if (flags & HeightValue)
		if ((geometry.height != 0) && (geometry.height < image->rows))
		  image->rows=geometry.height;
	}
  range=GetQuantumRange(image->depth);
  quantum_type=GetQuantumType(image,exception);
  //quantum_format = FloatingPointQuantumFormat;
  /*
	Create virtual canvas to support cropping (i.e. image.gray[100x100+10+20]).
  */
  canvas_image=CloneImage(image,image->extract_info.width,1,MagickFalse,
	exception);
  //(void) SetImageVirtualPixelMethod(canvas_image,BlackVirtualPixelMethod);
  quantum_type=GrayQuantum;
  quantum_info=AcquireQuantumInfo(image_info,canvas_image);
  if (quantum_info == (QuantumInfo *) NULL)
	ThrowReaderException(ResourceLimitError,"MemoryAllocationFailed");
  //SetQuantumFormat(image,quantum_info,UnsignedQuantumFormat);
  pixels=GetQuantumPixels(quantum_info);
  if ((image_info->ping != MagickFalse) && (image_info->number_scenes != 0))
  {
	  printf("here\n");
  }
  length=GetQuantumExtent(canvas_image,quantum_info,quantum_type);
  count=ReadBlob(image,length,pixels);
  number_pixels=GetImageExtent(image);
  for (y=0; y < (ssize_t) image->extract_info.height; y++)
  {
	register const Quantum
	  *restrict p;

	register Quantum
	  *restrict q;

	register ssize_t
	  x;

	if (count != (ssize_t) length)
	  {
		ThrowFileException(exception,CorruptImageError,
		  "UnexpectedEndOfFile",image->filename);
		break;
	  }
	q=GetAuthenticPixels(canvas_image,0,0,canvas_image->columns,1,exception);
	if (q == (Quantum *) NULL)
	  break;
	length=ImportQuantumPixels(canvas_image,(CacheView *) NULL,quantum_info,
	  quantum_type,pixels,exception);
	if (SyncAuthenticPixels(canvas_image,exception) == MagickFalse)
	  break;
	if (((y-image->extract_info.y) >= 0) &&
		((y-image->extract_info.y) < (ssize_t) image->rows))
	  {
		p=GetVirtualPixels(canvas_image,canvas_image->extract_info.x,0,
		  image->columns,1,exception);
		q=QueueAuthenticPixels(image,0,y-image->extract_info.y,image->columns,
		  1,exception);
		//pa = p;
		if ((p == (const Quantum *) NULL) || (q == (Quantum *) NULL))
		  break;
		for (x=0; x < (ssize_t) image->columns; x++)
		{
			SetPixelChannel(image,GrayPixelChannel,GetPixelGray(image, p),q);
         p+=GetPixelChannels(canvas_image);
         q+=GetPixelChannels(image);
		}
		if (SyncAuthenticPixels(image,exception) == MagickFalse)
		  break;
	  }
	if (image->previous == (Image *) NULL)
	  {
		status=SetImageProgress(image,LoadImageTag,(MagickOffsetType) y,
		  image->rows);
		if (status == MagickFalse)
		  break;
	  }
	count=ReadBlob(image,length,pixels);
  }
  SetQuantumImageType(image,quantum_type);
	/*
	  Read image data.
	*/
  (void) CloseBlob(image);
  return(GetFirstImageInList(image));
}

/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%                                                                             %
%                                                                             %
%   R e g i s t e r A N A L Y Z E I m a g e                                   %
%                                                                             %
%                                                                             %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  RegisterANALYZEImage() adds attributes for the ANALYZE image format to
%  the list of supported formats.  The attributes include the image format
%  tag, a method to read and/or write the format, whether the format
%  supports the saving of more than one frame to the same file or blob,
%  whether the format supports native in-memory I/O, and a brief
%  description of the format.
%
%  The format of the RegisterANALYZEImage method is:
%
%      size_t RegisterANALYZEImage(void)
%
*/
ModuleExport size_t RegisterANALYZEImage(void)
{
  MagickInfo
	*entry;

  entry=AcquireMagickInfo("ANALYZE","AZE","Analyze image");
  entry->decoder=(DecodeImageHandler *) ReadAnalyzeImage;
  entry->encoder=(EncodeImageHandler *) 0;
  entry->flags^=CoderAdjoinFlag;
  entry->flags|=CoderRawSupportFlag;
  entry->flags|=CoderEndianSupportFlag;
  (void) RegisterMagickInfo(entry);
  return(MagickImageCoderSignature);
}

/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%                                                                             %
%                                                                             %
%   U n r e g i s t e r A N A L Y Z E I m a g e                               %
%                                                                             %
%                                                                             %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  UnregisterANALYZEImage() removes format registrations made by the
%  ANALYZE module from the list of supported formats.
%
%  The format of the UnregisterANALYZEImage method is:
%
%      UnregisterANALYZEImage(void)
%
*/
ModuleExport void UnregisterANALYZEImage(void)
{
  (void) UnregisterMagickInfo("ANALYZE");
}

