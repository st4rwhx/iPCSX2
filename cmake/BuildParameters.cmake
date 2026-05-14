# BuildParameters.cmake — iOS stub
# Sets the variables that PCSX2_FLAGS INTERFACE targets consume.
# On iOS with Xcode generator, most flags come from Xcode attributes set in CMakeLists.txt.

# Required by CMakeLists.txt / pcsx2/CMakeLists.txt
set(IS_SUPPORTED_COMPILER TRUE)
set(PCSX2_DEFS "")
set(PCSX2_WARNINGS "")

# Feature flags — all OFF for iOS unless overridden
set(DISABLE_ADVANCE_SIMD  FALSE CACHE BOOL "")
set(LTO_PCSX2_CORE        FALSE CACHE BOOL "")
set(ENABLE_TESTS          FALSE CACHE BOOL "")
set(ENABLE_GSRUNNER       FALSE CACHE BOOL "")
set(USE_VTUNE             FALSE CACHE BOOL "")
set(USE_GCC               FALSE CACHE BOOL "")
set(USE_CLANG             TRUE  CACHE BOOL "")
set(USE_MSVC              FALSE CACHE BOOL "")
set(USE_BACKTRACE         FALSE CACHE BOOL "")
set(X11_API               FALSE CACHE BOOL "")
set(USE_LINKED_FFMPEG     FALSE CACHE BOOL "")
set(DISABLE_RECORDING     TRUE  CACHE BOOL "")

# iOS has no system libc extras to link
set(LIBC_LIBRARIES "")

# Compiler detection flags (used by common/CMakeLists.txt conditionals)
set(Linux  FALSE)
set(FREEBSD FALSE)
set(Windows FALSE)
set(OSX    TRUE)

# Needed by pcsx2/CMakeLists.txt ARM64 path
set(_M_ARM64 TRUE)
set(_M_X86   FALSE)
