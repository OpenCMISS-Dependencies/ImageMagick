
 # ***** BEGIN LICENSE BLOCK *****
 # Version: MPL 1.1/GPL 2.0/LGPL 2.1
 #
 # The contents of this file are subject to the Mozilla Public License Version
 # 1.1 (the "License"); you may not use this file except in compliance with
 # the License. You may obtain a copy of the License at
 # http://www.mozilla.org/MPL/
 #
 # Software distributed under the License is distributed on an "AS IS" basis,
 # WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 # for the specific language governing rights and limitations under the
 # License.
 #
 # The Original Code is cmgui
 #
 # The Initial Developer of the Original Code is
 # Auckland Uniservices Ltd, Auckland, New Zealand.
 # Portions created by the Initial Developer are Copyright (C) 2005
 # the Initial Developer. All Rights Reserved.
 #
 # Contributor(s): 
 #
 # Alternatively, the contents of this file may be used under the terms of
 # either the GNU General Public License Version 2 or later (the "GPL"), or
 # the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 # in which case the provisions of the GPL or the LGPL are applicable instead
 # of those above. If you wish to allow use of your version of this file only
 # under the terms of either the GPL or the LGPL, and not to allow others to
 # use your version of this file under the terms of the MPL, indicate your
 # decision by deleting the provisions above and replace them with the notice
 # and other provisions required by the GPL or the LGPL. If you do not delete
 # the provisions above, a recipient may use your version of this file under
 # the terms of any one of the MPL, the GPL or the LGPL.
 #
 # ***** END LICENSE BLOCK ***** */

cmake_minimum_required( VERSION 3.0 )
project(ImageMagick VERSION 7.0.3.5 LANGUAGES C CXX)
set(CMAKE_POSITION_INDEPENDENT_CODE YES)

# Specific library options
option( IMAGEMAGICK_MODULE_SUPPORT "ImageMagick module support" FALSE )
option( IMAGEMAGICK_HDRI "ImageMagick High Dynamic Range Imagery" FALSE )
# Delegate configuration
option( IMAGEMAGICK_WITH_BZip2 "Build ImageMagick with bzip2" TRUE )
option( IMAGEMAGICK_WITH_DJVU "Build ImageMagick with djvu" FALSE )
option( IMAGEMAGICK_WITH_DPS "Build ImageMagick with dps" FALSE )
option( IMAGEMAGICK_WITH_FLASHPIX "Build ImageMagick with flash pix" FALSE )
option( IMAGEMAGICK_WITH_FONTCONFIG "Build ImageMagick with fontconfig" FALSE )
option( IMAGEMAGICK_WITH_FREETYPE "Build ImageMagick with freetype" FALSE )
option( IMAGEMAGICK_WITH_GDCM "Build ImageMagick with gdcm" TRUE )
option( IMAGEMAGICK_WITH_GS "Build ImageMagick with ghostscript" FALSE )
option( IMAGEMAGICK_WITH_GRAPHVIS "Build ImageMagick with graph vis" FALSE )
option( IMAGEMAGICK_WITH_JBIG "Build ImageMagick with jbig" FALSE )
option( IMAGEMAGICK_WITH_JPEG "Build ImageMagick with jpeg" TRUE )
option( IMAGEMAGICK_WITH_JP2 "Build ImageMagick with jpeg-2000" FALSE )
option( IMAGEMAGICK_WITH_LCMS "Build ImageMagick with lcms" FALSE )
option( IMAGEMAGICK_WITH_LQR "Build ImageMagick with lqr" FALSE )
option( IMAGEMAGICK_WITH_MAGICKPP "Build ImageMagick with magick++" TRUE )
option( IMAGEMAGICK_WITH_OPENEXR "Build ImageMagick with openexr" FALSE )
option( IMAGEMAGICK_WITH_PERL "Build ImageMagick with perl" FALSE )
option( IMAGEMAGICK_WITH_PNG "Build ImageMagick with png" TRUE )
option( IMAGEMAGICK_WITH_RSVG "Build ImageMagick with rsvg" FALSE )
option( IMAGEMAGICK_WITH_TIFF "Build ImageMagick with tiff" TRUE )
option( IMAGEMAGICK_WITH_WINGDI32 "Build ImageMagick with fwindows gdi 32" FALSE )
option( IMAGEMAGICK_WITH_WMF "Build ImageMagick with wmf" FALSE )
option( IMAGEMAGICK_WITH_X11 "Build ImageMagick with X11" FALSE )
option( IMAGEMAGICK_WITH_XML "Build ImageMagick with xml" FALSE )
option( IMAGEMAGICK_WITH_ZLIB "Build ImageMagick with zlib" TRUE )
set( IMAGEMAGICK_WITH_QUANTUM_DEPTH 16 CACHE STRING "Set the quantum depth in bits, must be one of 8, 16, 32, or 64")

ADD_DEFINITIONS( -D_LIB -DNeedFunctionPrototypes )
IF( MSVC )
	ADD_DEFINITIONS( -D_CRT_SECURE_NO_WARNINGS -D_CRT_NOSTDC_NO_WARNINGS )
	# ADD_DEFINITIONS( -D_VISUALC_ ) # <-- Could add this but it seems to only be there to pump out messages
	SET( CMAKE_MFC_FLAG 0 )
ENDIF()

if (NOT DEFINED CMAKE_DEBUG_POSTFIX)
    set( CMAKE_DEBUG_POSTFIX "d" )
endif()

set(EXT_LINK_LIBS )
if(IMAGEMAGICK_WITH_BZip2)
	find_package(BZip2 ${BZIP2_VERSION} REQUIRED)
	list(APPEND EXT_LINK_LIBS bz2)
endif()
if( IMAGEMAGICK_WITH_ZLIB )
	find_package(ZLIB ${ZLIB_VERSION} REQUIRED)
	list(APPEND EXT_LINK_LIBS zlib)
endif()
if(IMAGEMAGICK_WITH_GDCM)
	find_package(GDCM-ABI ${GDCM-ABI_VERSION} REQUIRED CONFIG)
	list(APPEND EXT_LINK_LIBS gdcmCWRAPPER)
endif()
if( IMAGEMAGICK_HDRI )
	SET( HDRI_SUPPORT 1 )
endif()

SET( IMAGEMAGICK_WITH_VERSION IMAGEMAGICK-${ImageMagick_VERSION})
SET( LIB_INSTALL_DIR lib ) #/${IMAGEMAGICK_WITH_VERSION}/modules-Q${IMAGEMAGICK_MAGICKCORE_QUANTUM_DEPTH}
SET( LIBRARY_PATH \"${CMAKE_INSTALL_PREFIX}/lib/${IMAGEMAGICK_WITH_VERSION}\" )
SET( LIBRARY_RELATIVE_PATH \"${IMAGEMAGICK_WITH_VERSION}\" )
SET( SHARE_RELATIVE_PATH \"${IMAGEMAGICK_WITH_VERSION}\" )
SET( CONFIGURE_RELATIVE_PATH \"${IMAGEMAGICK_WITH_VERSION}/config\" )
SET( SHARE_CONFIGURE_RELATIVE_PATH \"${IMAGEMAGICK_WITH_VERSION}/config\" )
SET( PACKAGE_NAME \"ImageMagick\" )

# Configure platform
include(ConfigureChecks.cmake)

SET( LIBRARY_TARGET_NAME MagickCore)
add_subdirectory(MagickCore)
if (IMAGEMAGICK_WITH_MAGICKPP)
    set( LIBRARY_TARGET_NAME Magickpp )
    add_subdirectory( Magick++ )
endif()

install(EXPORT imagemagick-config 
    DESTINATION ${PACKAGE_CONFIG_DIR})
include(CMakePackageConfigHelpers)
WRITE_BASIC_PACKAGE_VERSION_FILE(${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-version.cmake
    COMPATIBILITY AnyNewerVersion)
file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake 
    "include(CMakeFindDependencyMacro)\r\n"
	"set(${PROJECT_NAME}_IMPORT_PREFIX \${_IMPORT_PREFIX})\r\n"
)

if(IMAGEMAGICK_WITH_BZip2)
    if (DEFINED BZip2_DIR)
        file(RELATIVE_PATH _REL_PATH "${CMAKE_INSTALL_PREFIX}" "${BZip2_DIR}")
        file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(BZip2_DIR \${${PROJECT_NAME}_IMPORT_PREFIX}/${_REL_PATH})\r\n")
    endif ()
    file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(BZIP2_FIND_SYSTEM ${BZIP2_FIND_SYSTEM})\r\nfind_dependency(BZip2)\r\n")
endif()
if(IMAGEMAGICK_WITH_ZLIB)
    if (DEFINED ZLIB_DIR)
        file(RELATIVE_PATH _REL_PATH "${CMAKE_INSTALL_PREFIX}" "${ZLIB_DIR}")
        file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(ZLIB_DIR \${${PROJECT_NAME}_IMPORT_PREFIX}/${_REL_PATH})\r\n")
    endif ()
    file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(ZLIB_FIND_SYSTEM ${ZLIB_FIND_SYSTEM})\r\nfind_dependency(ZLIB)\r\n")
endif()
if(IMAGEMAGICK_WITH_GDCM)
    if (DEFINED GDCM-ABI_DIR)
        file(RELATIVE_PATH _REL_PATH "${CMAKE_INSTALL_PREFIX}" "${GDCM-ABI_DIR}")
        file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(GDCM-ABI_DIR \${${PROJECT_NAME}_IMPORT_PREFIX}/${_REL_PATH})\r\n")
    endif ()
    file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(GDCM-ABI_FIND_SYSTEM ${GDCM-ABI_FIND_SYSTEM})\r\nfind_dependency(GDCM-ABI)\r\n")
endif()
if(IMAGEMAGICK_WITH_PNG)
    if (DEFINED PNG_DIR)
        file(RELATIVE_PATH _REL_PATH "${CMAKE_INSTALL_PREFIX}" "${PNG_DIR}")
        file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(PNG_DIR \${${PROJECT_NAME}_IMPORT_PREFIX}/${_REL_PATH})\r\n")
    endif ()
    file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(PNG_FIND_SYSTEM ${PNG_FIND_SYSTEM})\r\nfind_dependency(PNG)\r\n")
endif()
if(IMAGEMAGICK_WITH_JPEG)
    if (DEFINED JPEG_DIR)
        file(RELATIVE_PATH _REL_PATH "${CMAKE_INSTALL_PREFIX}" "${JPEG_DIR}")
        file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(JPEG_DIR \${${PROJECT_NAME}_IMPORT_PREFIX}/${_REL_PATH})\r\n")
    endif ()
    file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(JPEG_FIND_SYSTEM ${JPEG_FIND_SYSTEM})\r\nfind_dependency(JPEG)\r\n")
endif()
if(IMAGEMAGICK_WITH_TIFF)
    if (DEFINED TIFF_DIR)
        file(RELATIVE_PATH _REL_PATH "${CMAKE_INSTALL_PREFIX}" "${TIFF_DIR}")
        file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(TIFF_DIR \${${PROJECT_NAME}_IMPORT_PREFIX}/${_REL_PATH})\r\n")
    endif ()
    file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(TIFF_FIND_SYSTEM ${TIFF_FIND_SYSTEM})\r\nfind_dependency(TIFF)\r\n")
endif()
file(APPEND ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake "set(_IMPORT_PREFIX \${${PROJECT_NAME}_IMPORT_PREFIX})")
install(FILES 
    ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-version.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/imagemagick-config-dependencies.cmake
    DESTINATION ${PACKAGE_CONFIG_DIR})

