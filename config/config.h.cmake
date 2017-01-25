#ifndef _@IMAGEMAGICK_CONFIG_PREFIX@MAGICK_CONFIG_H
#define _@IMAGEMAGICK_CONFIG_PREFIX@MAGICK_CONFIG_H 1

/* config/config.h.cmake.  Created for cmake to configure.  */

/* Define if building universal (internal helper macro) */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@AC_APPLE_UNIVERSAL_BUILD

/* Define if you have AUTOTRACE library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@AUTOTRACE_DELEGATE

/* Define if coders and filters are to be built as modules. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@BUILD_MODULES

/* Define if you have the bzip2 library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@BZLIB_DELEGATE

/* Define if you have CAIRO library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@CAIRO_DELEGATE

/* permit enciphering and deciphering image pixels */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@CIPHER_SUPPORT

/* Define to 1 if the `closedir' function returns void instead of `int'. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@CLOSEDIR_VOID

/* Location of coder modules */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@CODER_PATH ${CODER_PATH}

/* Subdirectory of where the relative share directory is */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SHARE_RELATIVE_PATH ${SHARE_RELATIVE_PATH}

/* Subdirectory of lib where coder modules are installed */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@CODER_RELATIVE_PATH ${CODER_RELATIVE_PATH}

/* Directory where architecture-dependent configuration files live. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@CONFIGURE_PATH ${CONFIGURE_PATH}

/* Subdirectory of lib where architecture-dependent configuration files live.
   */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@CONFIGURE_RELATIVE_PATH ${CONFIGURE_RELATIVE_PATH}

/* Define if you have DJVU library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@DJVU_DELEGATE

/* Directory where ImageMagick documents live. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@DOCUMENTATION_PATH

/* Define if you have Display Postscript */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@DPS_DELEGATE

/* Build self-contained, embeddable, zero-configuration ImageMagick
   (experimental) */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@EMBEDDABLE_SUPPORT

/* exclude deprecated methods in MagickCore API */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@EXCLUDE_DEPRECATED

/* Directory where executables are installed. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@EXECUTABLE_PATH

/* Define if you have FFTW library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@FFTW_DELEGATE

/* Location of filter modules */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@FILTER_PATH

/* Subdirectory of lib where filter modules are installed */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@FILTER_RELATIVE_PATH

/* Define if you have FONTCONFIG library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@FONTCONFIG_DELEGATE

/* Define if you have FlashPIX library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@FPX_DELEGATE

/* Define if you have FreeType (TrueType font) library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@FREETYPE_DELEGATE

/* Define if you have Ghostscript library or framework */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@GS_DELEGATE

/* Define if you have GVC library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@GVC_DELEGATE

/* Define to 1 if you have the `argz_add' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ARGZ_ADD 1

/* Define to 1 if you have the `argz_append' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ARGZ_APPEND 1

/* Define to 1 if you have the `argz_count' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ARGZ_COUNT 1

/* Define to 1 if you have the `argz_create_sep' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ARGZ_CREATE_SEP 1

/* Define to 1 if you have the <argz.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ARGZ_H 1

/* Define to 1 if you have the `argz_insert' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ARGZ_INSERT 1

/* Define to 1 if you have the `argz_next' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ARGZ_NEXT 1

/* Define to 1 if you have the `argz_stringify' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ARGZ_STRINGIFY 1

/* Define to 1 if you have the <arm/limits.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ARM_LIMITS_H 1

/* Define to 1 if you have the `atexit' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ATEXIT 1

/* define if bool is a built-in type */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_BOOL

/* Define to 1 if you have the `clock' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_CLOCK 1

/* Define to 1 if you have clock_gettime. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_CLOCK_GETTIME

/* Define to 1 if clock_gettime supports CLOCK_REALTIME. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_CLOCK_REALTIME

/* Define to 1 if you have the `closedir' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_CLOSEDIR 1

/* Define to 1 if you have the <CL/opencl.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_CL_OPENCL_H 1

/* Define to 1 if you have the <complex.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_COMPLEX_H 1

/* Define to 1 if you have the declaration of `cygwin_conv_path', and to 0 if
   you don't. */
@HASHCMAKEDEFINE@01 @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DECL_CYGWIN_CONV_PATH

/* Define to 1 if you have the declaration of `pread', and to 0 if you don't.
   */
@HASHCMAKEDEFINE@01 @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DECL_PREAD

/* Define to 1 if you have the declaration of `pwrite', and to 0 if you don't.
   */
@HASHCMAKEDEFINE@01 @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DECL_PWRITE

/* Define to 1 if you have the declaration of `strlcpy', and to 0 if you
   don't. */
@HASHCMAKEDEFINE@01 @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DECL_STRLCPY

/* Define to 1 if you have the declaration of `vsnprintf', and to 0 if you
   don't. */
@HASHCMAKEDEFINE@01 @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DECL_VSNPRINTF

/* Define to 1 if you have the `directio' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DIRECTIO 1

/* Define to 1 if you have the <dirent.h> header file, and it defines `DIR'.
   */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DIR_IN_DIRENT_H 1

/* Define if you have the GNU dld library. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DLD

/* Define to 1 if you have the <dld.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DLD_H 1

/* Define to 1 if you have the `dlerror' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DLERROR 1

/* Define to 1 if you have the <dlfcn.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DLFCN_H 1

/* Define to 1 if you have the <dl.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DL_H 1

/* Define to 1 if you don't have `vprintf' but do have `_doprnt.' */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DOPRNT

/* Define if you have the _dyld_func_lookup function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DYLD

/* Define to 1 if you have the <errno.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ERRNO_H 1

/* Define to 1 if the system has the type `error_t'. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_ERROR_T

/* Define to 1 if you have the `execvp' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_EXECVP 1

/* Define to 1 if you have the <fcntl.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_FCNTL_H 1

/* Define to 1 if you have the `floor' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_FLOOR 1

/* Define to 1 if you have the `fork' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_FORK 1

/* Define to 1 if fseeko (and presumably ftello) exists and is declared. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_FSEEKO

/* Define to 1 if you have the <ft2build.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_FT2BUILD_H 1

/* Define to 1 if you have the `ftime' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_FTIME 1

/* Define to 1 if you have the `ftruncate' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_FTRUNCATE 1

/* Define to 1 if you have the `getcwd' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_GETCWD 1

/* Define to 1 if you have the `getdtablesize' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_GETDTABLESIZE 1

/* Define to 1 if you have the `getexecname' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_GETEXECNAME 1

/* Define to 1 if you have the `getpagesize' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_GETPAGESIZE 1

/* Define to 1 if you have the `getpid' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_GETPID 1

/* Define to 1 if you have the `getrlimit' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_GETRLIMIT 1

/* Define to 1 if you have the `getrusage' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_GETRUSAGE 1

/* Define to 1 if you have the `gettimeofday' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_GETTIMEOFDAY 1

/* Define to 1 if you have the `gmtime_r' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_GMTIME_R 1

/* Define to 1 if you have the <inttypes.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_INTTYPES_H 1

/* Define to 1 if you have the `j0' function */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_J0

/* Define to 1 if you have the `j1' function */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_J1

/* Define if you have the <lcms.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LCMS_H

/* Define if you have the <lcms/lcms.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LCMS_LCMS_H

/* Define if you have the libdl library or equivalent. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LIBDL

/* Define if libdlloader will be built on this platform */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LIBDLLOADER

/* Define to 1 if you have the `gcov' library (-lgcov). */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LIBGCOV

/* Define to 1 if you have the <limits.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LIMITS_H 1

/* Define to 1 if you have the <linux/unistd.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LINUX_UNISTD_H 1

/* Define to 1 if you have the <locale.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LOCALE_H 1

/* Define to 1 if you have the `localtime_r' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LOCALTIME_R 1

/* Define to 1 if the type `long double' works and has more range or precision
   than `double'. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LONG_DOUBLE_WIDER 1

/* Define to 1 if you have the `lstat' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LSTAT 1

/* define if the compiler implements L"widestring" */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LSTRING

/* Define this if a modern libltdl is already installed */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_LTDL

/* Define to 1 if you have the <machine/param.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_MACHINE_PARAM_H 1

/* Define to 1 if you have the <mach-o/dyld.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_MACH_O_DYLD_H 1

/* Define to 1 if you have the `memmove' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_MEMMOVE 1

/* Define to 1 if you have the <memory.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_MEMORY_H 1

/* Define to 1 if you have the `memset' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_MEMSET 1

/* Define to 1 if you have the `mkstemp' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_MKSTEMP 1

/* Define to 1 if you have a working `mmap' system call. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_MMAP

/* Define to 1 if you have a working `mmap' system call. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_MMAP_FILEIO

/* Define to 1 if you have the `munmap' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_MUNMAP 1

/* define if the compiler implements namespaces */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_NAMESPACES

/* Define to 1 if you have the <ndir.h> header file, and it defines `DIR'. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DIR_IN_NDIR_H 1

/* Define to 1 if you have the <OpenCL/OpenCL.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_OPENCL_OPENCL_H 1

/* Define to 1 if you have the `opendir' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_OPENDIR 1

/* Define to 1 if you have the <OS.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_OS_H 1

/* Define to 1 if you have the `pclose' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_PCLOSE 1

/* Define to 1 if you have the `poll' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_POLL 1

/* Define to 1 if you have the `popen' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_POPEN 1

/* Define to 1 if you have the `posix_fadvise' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_POSIX_FADVISE 1

/* Define to 1 if you have the `posix_fallocate' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_POSIX_FALLOCATE 1

/* Define to 1 if you have the `posix_madvise' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_POSIX_MADVISE 1

/* Define to 1 if you have the `posix_memalign' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_POSIX_MEMALIGN 1

/* Define to 1 if you have the `pow' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_POW 1

/* Define to 1 if you have the `pread' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_PREAD 1

/* Define if libtool can extract symbol lists from object files. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_PRELOADED_SYMBOLS

/* Define to 1 if you have the <process.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_PROCESS_H

/* Define if you have POSIX threads libraries and header files. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_PTHREAD

/* Define to 1 if you have the `pwrite' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_PWRITE 1

/* Define to 1 if you have the `raise' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_RAISE 1

/* Define to 1 if you have the `rand_r' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_RAND_R 1

/* Define to 1 if you have the `readdir' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_READDIR 1

/* Define to 1 if you have the `readdir_r' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_READDIR_R 1

/* Define to 1 if you have the `readlink' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_READLINK 1

/* Define to 1 if you have the `realpath' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_REALPATH 1

/* Define to 1 if you have the `seekdir' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SEEKDIR 1

/* Define to 1 if you have the `select' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SELECT 1

/* Define to 1 if you have the `setlocale' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SETLOCALE 1

/* Define to 1 if you have the `setvbuf' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SETVBUF 1

/* X11 server supports shape extension */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SHAPE

/* X11 server supports shared memory extension */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SHARED_MEMORY

/* Define if you have the shl_load function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SHL_LOAD

/* Define to 1 if you have the `sigaction' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SIGACTION 1

/* Define to 1 if you have the `sigemptyset' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SIGEMPTYSET 1

/* Define to 1 if you have the `spawnvp' function */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SPAWNVP 1

/* Define to 1 if you have the `sqrt' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SQRT 1

/* Define to 1 if you have the `stat' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STAT 1

/* Define to 1 if you have the <stdarg.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STDARG_H 1

/* Define to 1 if stdbool.h conforms to C99. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STDBOOL_H

/* Define to 1 if you have the <stddef.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STDDEF_H 1

/* Define to 1 if you have the <stdint.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STDLIB_H 1

/* define if the compiler supports ISO C++ standard library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STD_LIBS

/* define if the compiler supports the std namespace */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STD_NAMESPACE

/* Define to 1 if you have the `strcasecmp' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRCASECMP 1

/* Define to 1 if you have the `_stricmp' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE__STRICMP 1

/* Define to 1 if you have the `strchr' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRCHR 1

/* Define to 1 if you have the `strcspn' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRCSPN 1

/* Define to 1 if you have the `strdup' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRDUP 1

/* Define to 1 if you have the `strerror' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRERROR 1

/* Define to 1 if you have the `strerror_r' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRERROR_R 1

/* Define to 1 if cpp supports the ANSI # stringizing operator. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRINGIZE

/* Define to 1 if you have the <strings.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRING_H 1

/* Define to 1 if you have the `strlcat' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRLCAT 1

/* Define to 1 if you have the `strlcpy' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRLCPY 1

/* Define to 1 if you have the `strncasecmp' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRNCASECMP 1

/* Define to 1 if you have the `_strnicmp' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE__STRNICMP 1

/* Define to 1 if you have the `strpbrk' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRPBRK 1

/* Define to 1 if you have the `strrchr' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRRCHR 1

/* Define to 1 if you have the `strspn' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRSPN 1

/* Define to 1 if you have the `strstr' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRSTR 1

/* Define to 1 if you have the `strtol' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_STRTOL 1

/* Define to 1 if you have the `symlink' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYMLINK 1

/* Define to 1 if you have the `sysconf' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYSCONF 1

/* Define to 1 if you have the <sys/dir.h> header file, and it defines `DIR'.
   */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DIR_IN_SYS_DIR_H 1

/* Define to 1 if you have the <sys/dl.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_DL_H 1

/* Define to 1 if you have the <sys/ipc.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_IPC_H 1

/* Define to 1 if you have the <sys/ndir.h> header file, and it defines `DIR'.
   */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_DIR_IN_SYS_NDIR_H 1

/* Define to 1 if you have the <sys/param.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_PARAM_H 1

/* Define to 1 if you have the <sys/resource.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_RESOURCE_H 1

/* Define to 1 if you have the <sys/select.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_SELECT_H 1

/* Define to 1 if you have the <sys/socket.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/syslimits.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_SYSLIMITS_H 1

/* Define to 1 if you have the <sys/timeb.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_TIMEB_H 1

/* Define to 1 if you have the <sys/times.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_TIMES_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <sys/wait.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_SYS_WAIT_H 1

/* Define to 1 if you have the `telldir' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TELLDIR 1

/* Define to 1 if you have the `tempnam' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TEMPNAM 1

/* Define to 1 if you have the <tiffconf.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TIFFCONF_H 1

/* Define to 1 if you have the `TIFFIsCODECConfigured' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TIFFISCODECCONFIGURED 1

/* Define to 1 if you have the `TIFFMergeFieldInfo' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TIFFMERGEFIELDINFO 1

/* Define to 1 if you have the `TIFFReadEXIFDirectory' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TIFFREADEXIFDIRECTORY 1

/* Define to 1 if you have the `TIFFSetErrorHandlerExt' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TIFFSETERRORHANDLEREXT 1

/* Define to 1 if you have the `TIFFSetTagExtender' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TIFFSETTAGEXTENDER 1

/* Define to 1 if you have the `TIFFSetWarningHandlerExt' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TIFFSETWARNINGHANDLEREXT 1

/* Define to 1 if you have the `TIFFSwabArrayOfTriples' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TIFFSWABARRAYOFTRIPLES 1

/* Define to 1 if you have the `times' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_TIMES 1

/* Define to 1 if you have the <unistd.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_UNISTD_H 1

/* Define to 1 if you have the `usleep' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_USLEEP 1

/* Define to 1 if you have the `vfork' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_VFORK 1

/* Define to 1 if you have the <vfork.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_VFORK_H 1

/* Define to 1 if you have the `vprintf' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_VPRINTF 1

/* Define to 1 if you have the `vsnprintf' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_VSNPRINTF 1

/* Define to 1 if you have the `vsprintf' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_VSPRINTF 1

/* Define to 1 if you have the `waitpid' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_WAITPID 1

/* Define to 1 if you have the <wchar.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_WCHAR_H 1

/* Define to 1 if you have the <windows.h> header file. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_WINDOWS_H 1

/* This value is set to 1 to indicate that the system argz facility works */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_WORKING_ARGZ

/* Define to 1 if `fork' works. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_WORKING_FORK

/* Define to 1 if `vfork' works. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE_WORKING_VFORK

/* Define to 1 if the system has the type `_Bool'. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE__BOOL

/* Define to 1 if you have the `_exit' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE__EXIT 1

/* Define to 1 if you have the `_NSGetExecutablePath' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE__NSGETEXECUTABLEPATH 1

/* Define to 1 if you have the `_pclose' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE__PCLOSE 1

/* Define to 1 if you have the `_popen' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE__POPEN 1

/* Define to 1 if you have the `_wfopen' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE__WFOPEN 1

/* Define to 1 if you have the `_wstat' function. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HAVE__WSTAT 1

/* accurately represent the wide range of intensity levels in real scenes */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HDRI_SUPPORT

/* Define if you have umem memory allocation library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@HasUMEM

/* ImageMagick is formally installed under prefix */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@INSTALLED_SUPPORT

/* Define if you have JBIG library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@JBIG_DELEGATE

/* Define if you have JPEG version 2 "Jasper" library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@JP2_DELEGATE

/* Define if you have JPEG library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@JPEG_DELEGATE

/* Define if you have LCMS library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LCMS_DELEGATE

/* Directory where architecture-dependent files live. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LIBRARY_PATH ${LIBRARY_PATH}

/* Subdirectory of lib where ImageMagick architecture dependent files are
   installed */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LIBRARY_RELATIVE_PATH ${LIBRARY_RELATIVE_PATH}

/* Define if you have LQR library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LQR_DELEGATE

/* Define if using libltdl to support dynamically loadable modules */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LTDL_DELEGATE

/* Define if the OS needs help to load dependent libraries for dlopen(). */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LTDL_DLOPEN_DEPLIBS

/* Define to the system default library search path. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LT_DLSEARCH_PATH

/* The archive extension */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LT_LIBEXT

/* Define to the extension used for runtime loadable modules, say, ".so". */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LT_MODULE_EXT

/* Define to the name of the environment variable that determines the run-time
   module search path. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LT_MODULE_PATH_VAR

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@LT_OBJDIR

/* Define to prepend to default font search path. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@MAGICK_FONT_PATH

/* Magick API method prefix */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@NAMESPACE_PREFIX

/* Turn off assert statements */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@NDEBUG

/* Define if dlsym() requires a leading underscore in symbol names. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@NEED_USCORE

/* Define to 1 if your C compiler doesn't accept -c and -o together. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@NO_MINUS_C_MINUS_O

/* Define if you have OPENEXR library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@OPENEXR_DELEGATE

/* Define to the address where bug reports for this package should be sent. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@PACKAGE_BUGREPORT

/* Define to the full name of this package. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@PACKAGE_NAME ${PACKAGE_NAME}

/* Define to the full name and version of this package. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@PACKAGE_STRING ${PACKAGE_STRING}

/* Define to the one symbol short name of this package. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@PACKAGE_TARNAME ${PACKAGE_TARNAME}

/* Define to the home page for this package. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@PACKAGE_URL ${PACKAGE_URL}

/* Define to the version of this package. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@PACKAGE_VERSION ${PACKAGE_VERSION}

/* Define if you have PNG library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@PNG_DELEGATE

/* Define to necessary symbol if this constant uses a non-standard name on
   your system. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@PTHREAD_CREATE_JOINABLE

/* Pixel cache threshold in MB (defaults to available memory) */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@PixelCacheThreshold

/* Number of bits in a pixel Quantum (8/16/32/64) */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@QUANTUM_DEPTH ${QUANTUM_DEPTH}

/* Define as the return type of signal handlers (`int' or `void'). */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@RETSIGTYPE ${RETSIGTYPE}

/* Define if you have RSVG library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@RSVG_DELEGATE

/* Define to the type of arg 1 for `select'. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SELECT_TYPE_ARG1 ${SELECT_TYPE_ARG1}

/* Define to the type of args 2, 3 and 4 for `select'. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SELECT_TYPE_ARG234 ${SELECT_TYPE_ARG234}

/* Define to the type of arg 5 for `select'. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SELECT_TYPE_ARG5 ${SELECT_TYPE_ARG5}

/* Directory where architecture-independent configuration files live. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SHARE_CONFIGURE_PATH

/* Subdirectory of lib where architecture-independent configuration files
   live. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SHARE_CONFIGURE_RELATIVE_PATH ${SHARE_CONFIGURE_RELATIVE_PATH}

/* Directory where architecture-independent files live. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SHARE_PATH

/* The size of `off_t', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_OFF_T ${SIZEOF_OFF_T}

/* The size of `signed int', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_SIGNED_INT ${SIZEOF_SIGNED_INT}

/* The size of `signed long', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_SIGNED_LONG ${SIZEOF_SIGNED_LONG}

/* The size of `signed long long', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_SIGNED_LONG_LONG ${SIZEOF_SIGNED_LONG_LONG}

/* The size of `signed short', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_SIGNED_SHORT ${SIZEOF_SIGNED_SHORT}

/* The size of `size_t', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_SIZE_T ${SIZEOF_SIZE_T}

/* The size of `unsigned int', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_UNSIGNED_INT ${SIZEOF_UNSIGNED_INT}

/* The size of `unsigned int*', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_UNSIGNED_INTP ${SIZEOF_UNSIGNED_INTP}

/* The size of `unsigned long', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_UNSIGNED_LONG ${SIZEOF_UNSIGNED_LONG}

/* The size of `unsigned long long', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_UNSIGNED_LONG_LONG ${SIZEOF_UNSIGNED_LONG_LONG}

/* The size of `unsigned short', as computed by sizeof. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@SIZEOF_UNSIGNED_SHORT ${SIZEOF_UNSIGNED_SHORT}

/* Define to 1 if the `S_IS*' macros in <sys/stat.h> do not work properly. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@STAT_MACROS_BROKEN 1

/* Define to 1 if you have the ANSI C header files. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@STDC_HEADERS 1

/* Define if you have TIFF library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@TIFF_DELEGATE

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@TIME_WITH_SYS_TIME 1

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@TM_IN_SYS_TIME 1

/* Enable extensions on AIX 3, Interix.  */
#ifndef _ALL_SOURCE
# undef _ALL_SOURCE
#endif
/* Enable GNU extensions on systems that have them.  */
#ifndef _GNU_SOURCE
# undef _GNU_SOURCE
#endif
/* Enable threading extensions on Solaris.  */
#ifndef _POSIX_PTHREAD_SEMANTICS
# undef _POSIX_PTHREAD_SEMANTICS
#endif
/* Enable extensions on HP NonStop.  */
#ifndef _TANDEM_SOURCE
# undef _TANDEM_SOURCE
#endif
/* Enable general extensions on Solaris.  */
#ifndef __EXTENSIONS__
# undef __EXTENSIONS__
#endif


/* Define to use the Windows GDI32 library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@WINGDI32_DELEGATE

/* Define if using the dmalloc debugging malloc package */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@WITH_DMALLOC

/* Define if you have wmflite library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@WMFLITE_DELEGATE

/* Define if you have wmf library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@WMF_DELEGATE

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@WORDS_BIGENDIAN 1
# endif
#endif

/* Location of X11 configure files */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@X11_CONFIGURE_PATH

/* Define if you have X11 library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@X11_DELEGATE

/* Define if you have XML library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@XML_DELEGATE

/* Define to 1 if the X Window System is missing or not being used. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@X_DISPLAY_MISSING 1

/* Define if you have zlib compression library */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@ZLIB_DELEGATE

/* Number of bits in a file offset, on hosts where this is settable. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@_FILE_OFFSET_BITS ${_FILE_OFFSET_BITS}

/* enable run-time bounds-checking */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@_FORTIFY_SOURCE

/* Define to 1 to make fseeko visible on some hosts (e.g. glibc 2.2). */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@_LARGEFILE_SOURCE 1

/* Define for large files, on AIX-style hosts. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@_LARGE_FILES

/* Define to 1 if on MINIX. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@_MINIX 1

/* Define to 2 if the system does not provide POSIX.1 features except with
   this defined. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@_POSIX_1_SOURCE 2

/* Define to 1 if you need to in order for `stat' and other things to work. */
@HASHCMAKEDEFINE@ @IMAGEMAGICK_CONFIG_PREFIX@_POSIX_SOURCE 1

/* Define to 1 if type `char' is unsigned and you are not using gcc.  */
#ifndef __CHAR_UNSIGNED__
@HASHCMAKEDEFINE@ __CHAR_UNSIGNED__ 1
#endif

/* Define so that glibc/gnulib argp.h does not typedef error_t. */
@HASHCMAKEDEFINE@ __error_t_defined ${__error_t_defined}

/* Define to appropriate substitue if compiler does not have __func__ */
#ifndef __FUNCTION__
  #define __FUNCTION__ "unknown"
#endif
@HASHCMAKEDEFINE@ __func__ ${__func__}

/* Define to empty if `const' does not conform to ANSI C. */
@HASHCMAKEDEFINE@ const ${const}

/* Define to a type to use for `error_t' if it is not otherwise available. */
@HASHCMAKEDEFINE@ error_t ${error_t}

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
@HASHCMAKEDEFINE@ inline ${inline}
#endif

/* Define to `int' if <sys/types.h> does not define. */
@HASHCMAKEDEFINE@ mode_t ${mode_t}

/* Define to `long int' if <sys/types.h> does not define. */
@HASHCMAKEDEFINE@ off_t ${off_t}

/* Define to `int' if <sys/types.h> does not define. */
@HASHCMAKEDEFINE@ pid_t ${pid_t}

/* Define to the equivalent of the C99 'restrict' keyword, or to
   nothing if this is not supported.  Do not define if restrict is
   supported directly.  */
#if !defined(restrict)
# define restrict ${restrict}
#endif

/* Work around a bug in Sun C++: it does not support _Restrict or
   __restrict__, even though the corresponding Sun C compiler ends up with
   "#define restrict _Restrict" or "#define restrict __restrict__" in the
   previous line.  Perhaps some future version of Sun C++ will work with
   restrict; if so, hopefully it defines __RESTRICT like Sun C does.  */
#if defined __SUNPRO_CC && !defined __RESTRICT
# define _Restrict
# define __restrict__
#endif

/* Define to `unsigned int' if <sys/types.h> does not define. */
@HASHCMAKEDEFINE@ size_t ${size_t}

/* Define to `int' if <sys/types.h> does not define. */
@HASHCMAKEDEFINE@ ssize_t ${ssize_t}

/* Define as `fork' if `vfork' does not work. */
@HASHCMAKEDEFINE@ vfork ${vfork}

/* Define to empty if the keyword `volatile' does not work. Warning: valid
   code using `volatile' can become incorrect without. Disable with care. */
@HASHCMAKEDEFINE@ volatile ${volatile}

#endif

