# SearchForStuff.cmake — iOS stub
# Adds all vendored 3rdparty dependencies as cmake subdirectories.
# Every dependency has its own CMakeLists.txt in 3rdparty/.
# This file is included from the top-level CMakeLists.txt after detect_compiler().

set(THIRDDEP "${CMAKE_SOURCE_DIR}/3rdparty")

# ── SDL3 ────────────────────────────────────────────────────────────────────
set(SDL_SHARED         OFF CACHE BOOL "" FORCE)
set(SDL_STATIC         ON  CACHE BOOL "" FORCE)
set(SDL_TESTS          OFF CACHE BOOL "" FORCE)
set(SDL_TEST_LIBRARY   OFF CACHE BOOL "" FORCE)
set(SDL_EXAMPLES       OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/SDL3" sdl3 EXCLUDE_FROM_ALL)

# ── fmt ─────────────────────────────────────────────────────────────────────
set(FMT_MASTER_PROJECT OFF CACHE BOOL "" FORCE)
set(FMT_INSTALL        OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/fmt" fmt EXCLUDE_FROM_ALL)

# ── fast_float (header-only) ─────────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/fast_float" fast_float EXCLUDE_FROM_ALL)

# ── WebP ────────────────────────────────────────────────────────────────────
set(WEBP_BUILD_ANIM_UTILS  OFF CACHE BOOL "" FORCE)
set(WEBP_BUILD_CWEBP       OFF CACHE BOOL "" FORCE)
set(WEBP_BUILD_DWEBP       OFF CACHE BOOL "" FORCE)
set(WEBP_BUILD_EXTRAS      OFF CACHE BOOL "" FORCE)
set(WEBP_BUILD_WEBPINFO    OFF CACHE BOOL "" FORCE)
set(WEBP_BUILD_WEBPMUX     OFF CACHE BOOL "" FORCE)
set(WEBP_BUILD_GIF2WEBP    OFF CACHE BOOL "" FORCE)
set(WEBP_BUILD_IMG2WEBP    OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/libwebp" webp EXCLUDE_FROM_ALL)
# Alias to the name common/CMakeLists.txt expects
if(TARGET webp AND NOT TARGET WebP::libwebp)
    add_library(WebP::libwebp ALIAS webp)
endif()

# ── VIXL (ARM64 assembler — required for dynarec) ────────────────────────────
add_subdirectory("${THIRDDEP}/vixl" vixl EXCLUDE_FROM_ALL)

# ── zlib ────────────────────────────────────────────────────────────────────
set(ZLIB_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/zlib" zlib EXCLUDE_FROM_ALL)

# ── lz4 ─────────────────────────────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/lz4" lz4 EXCLUDE_FROM_ALL)

# ── lzma ────────────────────────────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/lzma" lzma EXCLUDE_FROM_ALL)

# ── zstd ────────────────────────────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/zstd" zstd EXCLUDE_FROM_ALL)

# ── libchdr (CHD disk image support) ─────────────────────────────────────────
add_subdirectory("${THIRDDEP}/libchdr" libchdr EXCLUDE_FROM_ALL)

# ── libzip ──────────────────────────────────────────────────────────────────
set(LIBZIP_DO_INSTALL  OFF CACHE BOOL "" FORCE)
set(BUILD_TOOLS        OFF CACHE BOOL "" FORCE)
set(BUILD_REGRESS      OFF CACHE BOOL "" FORCE)
set(BUILD_EXAMPLES     OFF CACHE BOOL "" FORCE)
set(BUILD_DOC          OFF CACHE BOOL "" FORCE)
set(ENABLE_COMMONCRYPTO OFF CACHE BOOL "" FORCE)
set(ENABLE_GNUTLS      OFF CACHE BOOL "" FORCE)
set(ENABLE_MBEDTLS     OFF CACHE BOOL "" FORCE)
set(ENABLE_OPENSSL     OFF CACHE BOOL "" FORCE)
set(ENABLE_WINDOWS_CRYPTO OFF CACHE BOOL "" FORCE)
set(ENABLE_BZIP2       OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/libzip" libzip EXCLUDE_FROM_ALL)

# ── cpuinfo ──────────────────────────────────────────────────────────────────
set(CPUINFO_BUILD_TOOLS       OFF CACHE BOOL "" FORCE)
set(CPUINFO_BUILD_UNIT_TESTS  OFF CACHE BOOL "" FORCE)
set(CPUINFO_BUILD_MOCK_TESTS  OFF CACHE BOOL "" FORCE)
set(CPUINFO_BUILD_BENCHMARKS  OFF CACHE BOOL "" FORCE)
set(CPUINFO_RUNTIME_TYPE      "default" CACHE STRING "" FORCE)
add_subdirectory("${THIRDDEP}/cpuinfo" cpuinfo EXCLUDE_FROM_ALL)

# ── freetype ────────────────────────────────────────────────────────────────
set(FT_DISABLE_BZIP2    ON  CACHE BOOL "" FORCE)
set(FT_DISABLE_PNG      ON  CACHE BOOL "" FORCE)
set(FT_DISABLE_HARFBUZZ ON  CACHE BOOL "" FORCE)
set(FT_DISABLE_BROTLI   ON  CACHE BOOL "" FORCE)
set(FT_DISABLE_ZLIB     OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/freetype" freetype EXCLUDE_FROM_ALL)

# ── harfbuzz ────────────────────────────────────────────────────────────────
set(HB_BUILD_TESTS     OFF CACHE BOOL "" FORCE)
set(HB_BUILD_SUBSET    OFF CACHE BOOL "" FORCE)
set(HB_BUILD_UTILS     OFF CACHE BOOL "" FORCE)
set(HB_HAVE_FREETYPE   OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/harfbuzz" harfbuzz EXCLUDE_FROM_ALL)

# ── plutosvg (SVG renderer) ──────────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/plutosvg1" plutosvg EXCLUDE_FROM_ALL)

# ── imgui ───────────────────────────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/imgui" imgui EXCLUDE_FROM_ALL)

# ── simpleini (header-only INI parser) ───────────────────────────────────────
add_subdirectory("${THIRDDEP}/simpleini" simpleini EXCLUDE_FROM_ALL)

# ── rapidyaml ───────────────────────────────────────────────────────────────
set(RYML_BUILD_TESTS   OFF CACHE BOOL "" FORCE)
set(RYML_BUILD_SAMPLES OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/rapidyaml" rapidyaml EXCLUDE_FROM_ALL)

# ── rcheevos (RetroAchievements) ─────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/rcheevos" rcheevos EXCLUDE_FROM_ALL)

# ── rainterface ──────────────────────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/rainterface" rainterface EXCLUDE_FROM_ALL)

# ── soundtouch (audio pitch/tempo) ───────────────────────────────────────────
add_subdirectory("${THIRDDEP}/soundtouch" soundtouch EXCLUDE_FROM_ALL)

# ── freesurround (Dolby surround) ────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/freesurround" freesurround EXCLUDE_FROM_ALL)

# ── cubeb (audio output) ─────────────────────────────────────────────────────
set(BUILD_TESTS        OFF CACHE BOOL "" FORCE)
set(BUILD_RUST_LIBS    OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/cubeb" cubeb EXCLUDE_FROM_ALL)

# ── ccc (PS2 debug symbols) ──────────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/ccc" ccc EXCLUDE_FROM_ALL)

# ── demangler ────────────────────────────────────────────────────────────────
add_subdirectory("${THIRDDEP}/demangler" demangler EXCLUDE_FROM_ALL)

# ── glslang (needed for SPV shader compilation, Metal path uses it minimally) ─
set(GLSLANG_TESTS           OFF CACHE BOOL "" FORCE)
set(GLSLANG_ENABLE_INSTALL  OFF CACHE BOOL "" FORCE)
set(BUILD_EXTERNAL          OFF CACHE BOOL "" FORCE)
set(ENABLE_GLSLANG_BINARIES OFF CACHE BOOL "" FORCE)
set(ENABLE_HLSL             OFF CACHE BOOL "" FORCE)
set(ENABLE_OPT              OFF CACHE BOOL "" FORCE)
add_subdirectory("${THIRDDEP}/glslang/glslang" glslang EXCLUDE_FROM_ALL)

# ── vulkan-headers (interface only, no Vulkan runtime on iOS) ─────────────────
add_subdirectory("${THIRDDEP}/vulkan" vulkan EXCLUDE_FROM_ALL)

# NOTE: discord-rpc, d3d12memalloc, libadrenotools, oboe, winpixeventruntime,
# winwil, xbyak, zydis are desktop/Android/Windows-only and skipped for iOS.
