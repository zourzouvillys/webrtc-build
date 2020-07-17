# webrtc-build

performs a build of WebRTC source using GitHub actions.

https://www.youtube.com/watch?v=Sc-sJkKt_xM
https://www.youtube.com/watch?v=FeYP2n8ayGE


```
action_pool_depth
    Current value (from the default) = -1
      From //build/toolchain/BUILD.gn:10

    Pool for non goma tasks.

additional_absl_clients
    Current value (from the default) = []
      From //third_party/abseil-cpp/absl.gni:33

    Additional targets that can depend on absl.

android_full_debug
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:54

    Normally, Android builds are lightly optimized, even for debug builds, to
    keep binary size down. Setting this flag to true disables such optimization

apm_debug_dump
    Current value (from the default) = false
      From //webrtc.gni:97

    Selects whether debug dumps for the audio processing module
    should be generated.

archive_seed_corpus
    Current value (from the default) = true
      From //build/config/sanitizers/sanitizers.gni:116

    When true, seed corpora archives are built.

asan_globals
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:179

    Detect overflow/underflow for global objects.
   
    Mac: http://crbug.com/352073

asan_use_blacklist
    Current value (from the default) = true
      From //build/config/sanitizers/sanitizers.gni:108

    Use blacklists from tools/memory/asan when compiling with asan.

auto_profile_path
    Current value (from the default) = ""
      From //build/config/compiler/BUILD.gn:80

    AFDO (Automatic Feedback Directed Optimizer) is a form of profile-guided
    optimization that GCC supports. It used by ChromeOS in their official
    builds. To use it, set auto_profile_path to the path to a file containing
    the needed gcov profiling data.

branding_file_path
    Current value (from the default) = "//chrome/app/theme/chromium/BRANDING"
      From //build/config/chrome_build.gni:28

    The path to the BRANDING file in chrome/app/theme.

branding_path_component
    Current value (from the default) = "chromium"
      From //build/config/chrome_build.gni:22

build_libsrtp_tests
    Current value (from the default) = false
      From //third_party/libsrtp/BUILD.gn:10

    Tests may not be appropriate for some build environments, e.g. Windows.
    Rather than enumerate valid options, we just let clients ask for them.

build_with_mozilla
    Current value (from the default) = false
      From //webrtc.gni:124

    Enable to use the Mozilla internal settings.

bundle_pool_depth
    Current value (from the default) = -1
      From //build/toolchain/mac/BUILD.gn:29

    Reduce the number of tasks using the copy_bundle_data and compile_xcassets
    tools as they can cause lots of I/O contention when invoking ninja with a
    large number of parallel jobs (e.g. when using distributed build like goma).

cast_is_debug
    Current value (from the default) = false
      From //build/config/chromecast_build.gni:16

    If true, IS_CAST_DEBUG_BUILD() will evaluate to 1 in version.h. Otherwise,
    it will evaluate to 0. Overriding this when is_debug=false is useful for
    doing engineering builds.

cc_wrapper
    Current value (from the default) = ""
      From //build/toolchain/cc_wrapper.gni:36

    Set to "ccache", "icecc" or "distcc".  Probably doesn't work on windows.

chrome_pgo_phase
    Current value (from the default) = 0
      From //build/config/compiler/pgo/pgo.gni:11

    Specify the current PGO phase.
    Here's the different values that can be used:
        0 : Means that PGO is turned off.
        1 : Used during the PGI (instrumentation) phase.
        2 : Used during the PGO (optimization) phase.

chromecast_branding
    Current value (from the default) = "public"
      From //build/config/chromecast_build.gni:20

    chromecast_branding is used to include or exclude Google-branded components.
    Set it to "public" for a Chromium build.

chromeos_afdo_platform
    Current value (from the default) = "silvermont"
      From //build/config/compiler/BUILD.gn:102

    This configuration is used to select a default profile in Chrome OS based on
    the microarchitectures we are using. This is only used if
    clang_use_default_sample_profile is true and clang_sample_profile_path is
    empty.

chromeos_is_browser_only
    Current value (from the default) = false
      From //build/config/chromeos/ui_mode.gni:10

    This controls UI configuration for Chrome.
    If this flag is set, we assume Chrome runs on Chrome OS devices.
    TODO(crbug.com/1052397): After the clean up, this should be
    replaced with 'target_os = "chromeos" && ui_mode == "browser"'.

clang_base_path
    Current value (from the default) = "//third_party/llvm-build/Release+Asserts"
      From //build/config/clang/clang.gni:17

clang_diagnostic_dir
    Current value (from the default) = "../../tools/clang/crashreports"
      From //build/config/compiler/compiler.gni:96

clang_emit_debug_info_for_profiling
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:105

    Emit debug information for profiling wile building with clang.

clang_sample_profile_path
    Current value (from the default) = ""
      From //build/config/compiler/BUILD.gn:87

    Path to an AFDO profile to use while building with clang, if any. Empty
    implies none.

clang_use_chrome_plugins
    Current value (from the default) = true
      From //build/config/clang/clang.gni:14

clang_use_default_sample_profile
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:95

    Some configurations have default sample profiles. If this is true and
    clang_sample_profile_path is empty, we'll fall back to the default.
   
    We currently only have default profiles for Chromium in-tree, so we disable
    this by default for all downstream projects, since these profiles are likely
    nonsensical for said projects.

clang_version
    Current value (from the default) = "11.0.0"
      From //build/toolchain/toolchain.gni:46

    TODO(crbug.com/1105518): Remove in the next Clang roll.

com_init_check_hook_disabled
    Current value (from the default) = false
      From //base/BUILD.gn:71

    Set to true to disable COM init check hooks.

compiler_timing
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:108

    Turn this on to have the compiler output extra timing information.

compute_build_timestamp
    Current value (from the default) = "compute_build_timestamp.py"
      From //build/timestamp.gni:17

    This should be the filename of a script that prints a single line
    containing an integer that's a unix timestamp in UTC.
    This timestamp is used as build time and will be compiled into
    other code.
   
    This argument may look unused. Before removing please check with the
    chromecast team to see if they still use it internally.

concurrent_links
    Current value (from the default) = -1
      From //build/toolchain/concurrent_links.gni:21

    Limit the number of concurrent links; we often want to run fewer
    links at once than we do compiles, because linking is memory-intensive.
    The default to use varies by platform and by the amount of memory
    available, so we call out to a script to get the right value.

coverage_instrumentation_input_file
    Current value (from the default) = ""
      From //build/config/coverage/coverage.gni:29

    The path to the coverage instrumentation input file should be a source root
    absolute path (e.g. //out/Release/coverage_instrumentation_input.txt), and
    the file consists of multiple lines where each line represents a path to a
    source file, and the paths must be relative to the root build directory.
    e.g. ../../base/task/post_task.cc for build directory 'out/Release'.
   
    NOTE that this arg will be non-op if use_clang_coverage is false.

cros_board
    Current value (from the default) = ""
      From //build/config/chromeos/args.gni:8

    This is used only by Simple Chrome to bind its value to test-runner scripts
    generated at build-time.

cros_sdk_version
    Current value (from the default) = ""
      From //build/config/chromeos/args.gni:12

    Similar to cros_board above, this used only by test-runner scripts in
    Simple Chrome.

current_cpu
    Current value (from the default) = ""
      (Internally set; try `gn help current_cpu`.)

current_os
    Current value (from the default) = ""
      (Internally set; try `gn help current_os`.)

custom_toolchain
    Current value (from the default) = ""
      From //build/config/BUILDCONFIG.gn:144

    Allows the path to a custom target toolchain to be injected as a single
    argument, and set as the default toolchain.

dcheck_always_on
    Current value (from the default) = false
      From //build/config/dcheck_always_on.gni:14

    Set to true to enable dcheck in Release builds.

dcheck_is_configurable
    Current value (from the default) = false
      From //build/config/dcheck_always_on.gni:9

    Enables DCHECKs to be built-in, but to default to being non-fatal/log-only.
    DCHECKS can then be set as fatal/non-fatal via the DCheckIsFatal feature.
    See crbug.com/596231 for details on how this is used.

disable_libfuzzer
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:91

    Helper variable for testing builds with disabled libfuzzer.
    Not for client use.


enable_base_tracing
    Current value (from the default) = false
      From //build_overrides/build.gni:54

    WebRTC doesn't depend on //base from production code but only for testing
    purposes. In any case, it doesn't depend on //third_party/perfetto which
    is used for base tracing, so this feature is disabled.

enable_cast_renderer
    Current value (from the default) = false
      From //build/config/chromecast_build.gni:50

enable_debugallocation
    Current value (from the default) = false
      From //base/allocator/BUILD.gn:14

    Provide a way to force disable debugallocation in Debug builds,
    e.g. for profiling (it's more rare to profile Debug builds,
    but people sometimes need to do that).


enable_dsyms
    Current value (from the default) = false
      From //build/config/mac/symbols.gni:17

    Produce dSYM files for targets that are configured to do so. dSYM
    generation is controlled globally as it is a linker output (produced via
    the //build/toolchain/mac/linker_driver.py. Enabling this will result in
    all shared library, loadable module, and executable targets having a dSYM
    generated.

enable_full_stack_frames_for_profiling
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:61

    Compile in such a way as to make it possible for the profiler to unwind full
    stack frames. Setting this flag has a large effect on the performance of the
    generated code than just setting profiling, but gives the profiler more
    information to analyze.
    Requires profiling to be set to true.


enable_google_benchmarks
    Current value (from the default) = true
      From //third_party/google_benchmark/buildconfig.gni:11

    Google Benchmark is not checked out by default, because it is only used by
    a few specialized benchmarks that most developers do not interact with.

enable_iterator_debugging
    Current value (from the default) = false
      From //build/config/c++/c++.gni:41

    When set, enables libc++ debug mode with iterator debugging.
   
    Iterator debugging is generally useful for catching bugs. But it can
    introduce extra locking to check the state of an iterator against the state
    of the current object. For iterator- and thread-heavy code, this can
    significantly slow execution - two orders of magnitude slowdown has been
    seen (crbug.com/903553) and iterator debugging also slows builds by making
    generation of snapshot_blob.bin take ~40-60 s longer. Therefore this
    defaults to off.

enable_js_type_check
    Current value (from the default) = false
      From //third_party/closure_compiler/compile_js.gni:11

    Enable closure type-checking for Chrome's web technology-based UI. This
    enables the webui_closure_compile target which does a no-op without this
    flag enabled. Requires Java.

enable_kythe_annotations
    Current value (from the default) = false
      From //build/toolchain/kythe.gni:10

    Enables Kythe annotations necessary to build cross references.

enable_libaom
    Current value = true
      From //.gn:75
    Overridden from the default = false
      From //third_party/libaom/options.gni:5

    Enable encoding and decoding AV1 video files.

enable_libaom_decoder
    Current value (from the default) = false
      From //third_party/libaom/options.gni:7

    To be deprecated soon.

enable_location_source
    Current value (from the default) = true
      From //base/BUILD.gn:56

    Indicates if the Location object contains the source code information
    (file, function, line). False means only the program counter (and currently
    file name) is saved.

enable_log_error_not_reached
    Current value (from the default) = false
      From //build/config/logging.gni:9

    Use LogErrorNotReached() for NOTREACHED().


enable_modular_updater
    Current value (from the default) = false
      From //build/config/chromecast_build.gni:30

    Set true to enable modular_updater.

enable_mutex_priority_inheritance
    Current value (from the default) = false
      From //base/BUILD.gn:76

    Set to true to enable mutex priority inheritance. See the comments in
    LockImpl::PriorityInheritanceAvailable() in lock_impl_posix.cc for the
    platform requirements to safely enable priority inheritance.

enable_nocompile_tests
    Current value (from the default) = true
      From //build/nocompile.gni:65


enable_paint_preview
    Current value (from the default) = true
      From //build/config/buildflags_paint_preview.gni:15

    Enable basic paint preview support. Does not work on iOS or Fuchsia. Should
    not be included with Chromecast. Not ready for shipping builds yet so
    include in unofficial builds.
    Used by //components/paint_preview and //third_party/harfbuzz-ng.
    TODO(bug/webrtc:11223) Move back this file in //components/paint_preview/
        once WebRTC doesn't roll harfbuzz-ng anymore, for consistency sake.

enable_precompiled_headers
    Current value (from the default) = true
      From //build/config/pch.gni:11

    Precompiled header file support is by default available,
    but for distributed build system uses (like goma) or when
    doing official builds.


enable_profiling
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:43

    Compile in such a way as to enable profiling of the generated code. For
    example, don't omit the frame pointer and leave in symbols.

enable_segment_heap
    Current value (from the default) = false
      From //build/config/win/manifest.gni:46

enable_stripping
    Current value (from the default) = false
      From //build/config/mac/symbols.gni:24

    Strip symbols from linked targets by default. If this is enabled, the
    //build/config/mac:strip_all config will be applied to all linked targets.
    If custom stripping parameters are required, remove that config from a
    linked target and apply custom -Wcrl,strip flags. See
    //build/toolchain/mac/linker_driver.py for more information.


enable_wmax_tokens
    Current value (from the default) = true
      From //build/config/compiler/BUILD.gn:147

exclude_unwind_tables
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:92

    Exclude unwind tables by default for official builds as unwinding can be
    done from stack dumps produced by Crashpad at a later time "offline" in the
    crash server. Since this increases binary size, we don't recommend including
    them in shipping builds.
    For unofficial (e.g. development) builds and non-Chrome branded (e.g. Cronet
    which doesn't use Crashpad, crbug.com/479283) builds it's useful to be able
    to unwind at runtime.

fatal_linker_warnings
    Current value (from the default) = true
      From //build/config/compiler/BUILD.gn:69

    Enable fatal linker warnings. Building Chromium with certain versions
    of binutils can cause linker warning.


forbid_non_component_debug_builds
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:83

    Whether an error should be raised on attempts to make debug builds with
    is_component_build=false. Very large debug symbols can have unwanted side
    effects so this is enforced by default for chromium.

from_here_uses_location_builtins
    Current value (from the default) = true
      From //base/BUILD.gn:63

    Whether or not the FROM_HERE macro uses base::Location::Current(). This
    allows the implementation to be reverted if needed while validating its
    replacement base::Location::Current(). On by default in non-official builds
    for testing purposes.
    TODO(https://crbug.com/974061): remove this eventually.



gcc_target_rpath
    Current value (from the default) = ""
      From //build/config/gcc/BUILD.gn:19

    When non empty, overrides the target rpath value. This allows a user to
    make a Chromium build where binaries and shared libraries are meant to be
    installed into separate directories, like /usr/bin/chromium and
    /usr/lib/chromium for instance. It is useful when a build system that
    generates a whole target root filesystem (like Yocto) is used on top of gn,
    especially when cross-compiling.
    Note: this gn arg is similar to gyp target_rpath generator flag.

generate_linker_map
    Current value (from the default) = false
      From //build/toolchain/toolchain.gni:26

    Used for binary size analysis.

generate_order_files
    Current value (from the default) = false
      From //build/config/chrome_build.gni:13

    Turn this on to generate order files. See
    https://chromium.googlesource.com/chromium/src/+/master/docs/win_order_files.md


gold_path
    Current value (from the default) = ""
      From //build/config/compiler/BUILD.gn:65

    When we are going to use gold we need to find it.
    This is initialized below, after use_gold might have been overridden.

goma_dir
    Current value (from the default) = ""
      From //build/toolchain/goma.gni:17

    Absolute directory containing the gomacc binary.

gtest_enable_absl_printers
    Current value = true
      From //.gn:77
    Overridden from the default = true
      From //build_overrides/build.gni:58

    If true, it assumes that //third_party/abseil-cpp is an available
    dependency for googletest.

host_byteorder
    Current value (from the default) = "undefined"
      From //build/config/host_byteorder.gni:9

host_cpu
    Current value (from the default) = "x64"
      (Internally set; try `gn help host_cpu`.)

host_os
    Current value (from the default) = "mac"
      (Internally set; try `gn help host_os`.)

host_pkg_config
    Current value (from the default) = ""
      From //build/config/linux/pkg_config.gni:36

    A optional pkg-config wrapper to use for tools built on the host.

host_toolchain
    Current value (from the default) = ""
      From //build/config/BUILDCONFIG.gn:148

    This should not normally be set as a build argument.  It's here so that
    every toolchain can pass through the "global" value via toolchain_args().

icu_disable_thin_archive
    Current value (from the default) = false
      From //third_party/icu/config.gni:11

    If true, compile icu into a standalone static library. Currently this is
    only useful on Chrome OS.

icu_use_data_file
    Current value (from the default) = true
      From //third_party/icu/config.gni:8

    Tells icu to load an external data file rather than rely on the icudata
    being linked directly into the binary.

init_stack_vars
    Current value (from the default) = true
      From //build/config/compiler/BUILD.gn:133

ios_deployment_target
    Current value = "10.0"
      From //.gn:65
    Overridden from the default = "12.0"
      From //build/config/ios/ios_sdk_overrides.gni:10

    Version of iOS that we're targeting.

ios_use_goma_rbe
    Current value (from the default) = false
      From //build/toolchain/goma.gni:30

    Auto-configure for Goma RBE backend.
    TODO(crbug.com/1015730): true if use_goma = true in the future.

is_asan
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:13

    Compile for Address Sanitizer to find memory bugs.


is_cast_audio_only
    Current value (from the default) = false
      From //build/config/chromecast_build.gni:23

    Set this true for an audio-only Chromecast build.

is_cast_desktop_build
    Current value (from the default) = false
      From //build/config/chromecast_build.gni:42

    True if Chromecast build is targeted for linux desktop. This type of build
    is useful for testing and development, but currently supports only a subset
    of Cast functionality. Though this defaults to true for x86 Linux devices,
    this should be overriden manually for an embedded x86 build.
    TODO(slan): Remove instances of this when x86 is a fully supported platform.

is_cfi
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:58

    Compile with Control Flow Integrity to protect virtual calls and casts.
    See http://clang.llvm.org/docs/ControlFlowIntegrity.html
   
    TODO(pcc): Remove this flag if/when CFI is enabled in all official builds.
   
    Disable this on linux-chromeos to avoid using ThinLTO there;
    crbug.com/1033839. Similarly, don't use this on ARC builds.

is_chrome_branded
    Current value (from the default) = false
      From //build/config/chrome_build.gni:9

    Select the desired branding flavor. False means normal Chromium branding,
    true means official Google Chrome branding (requires extra Google-internal
    resources).

is_chromecast
    Current value (from the default) = false
      From //build/config/chromecast_build.gni:11

    Set this true for a Chromecast build. Chromecast builds are supported on
    Linux and Android.

is_chromeos_device
    Current value (from the default) = false
      From //build/config/chromeos/args.gni:26

    Determines if we're building for a Chrome OS device (or VM) and not just
    linux-chromeos. NOTE: Most test targets in Chrome expect to run under
    linux-chromeos, so some have compile-time asserts that intentionally fail
    when this build flag is set. Build and run the tests for linux-chromeos
    instead.
    https://chromium.googlesource.com/chromium/src/+/master/docs/chromeos_build_instructions.md
    https://chromium.googlesource.com/chromiumos/docs/+/master/simple_chrome_workflow.md

is_clang
    Current value (from the default) = true
      From //build/config/BUILDCONFIG.gn:137

    Set to true when compiling with the Clang compiler.

is_component_build
    Current value = false
      From //out/Default/args.gn:1
    Overridden from the default = false
      From //build/config/BUILDCONFIG.gn:165

    Component build. Setting to true compiles targets declared as "components"
    as shared libraries loaded dynamically. This speeds up development time.
    When false, components will be linked statically.
   
    For more information see
    https://chromium.googlesource.com/chromium/src/+/master/docs/component_build.md

is_debug
    Current value = false
      From //out/Default/args.gn:2
    Overridden from the default = true
      From //build/config/BUILDCONFIG.gn:155

    Debug build. Enabling official builds automatically sets is_debug to false.

is_desktop_linux
    Current value (from the default) = false
      From //build/config/BUILDCONFIG.gn:134

    Whether we're a traditional desktop unix.

is_hwasan
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:18

    Compile for Hardware-Assisted Address Sanitizer to find memory bugs
    (android/arm64 only).
    See http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html

is_lsan
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:21

    Compile for Leak Sanitizer to find leaks.

is_msan
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:24

    Compile for Memory Sanitizer to find uninitialized reads.

is_nacl_glibc
    Current value (from the default) = false
      From //build/config/nacl/config.gni:9

    Native Client supports both Newlib and Glibc C libraries where Newlib
    is assumed to be the default one; use this to determine whether Glibc
    is being used instead.

is_official_build
    Current value (from the default) = false
      From //build/config/BUILDCONFIG.gn:131

    Set to enable the official build level of optimization. This has nothing
    to do with branding, but enables an additional level of optimization above
    release (!is_debug). This might be better expressed as a tri-state
    (debug, release, official) but for historical reasons there are two
    separate flags.

is_tsan
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:27

    Compile for Thread Sanitizer to find threading bugs.

is_ubsan
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:31

    Compile for Undefined Behaviour Sanitizer to find various types of
    undefined behaviour (excludes vptr checks).

is_ubsan_no_recover
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:34

    Halt the program if a problem is detected.

is_ubsan_null
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:37

    Compile for Undefined Behaviour Sanitizer's null pointer checks.

is_ubsan_security
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:87

    Enables core ubsan security features. Will later be removed once it matches
    is_ubsan.

is_ubsan_vptr
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:40

    Compile for Undefined Behaviour Sanitizer's vptr checks.

is_unsafe_developer_build
    Current value (from the default) = true
      From //base/BUILD.gn:68

    Unsafe developer build. Has developer-friendly features that may weaken or
    disable security measures like sandboxing or ASLR.
    IMPORTANT: Unsafe developer builds should never be distributed to end users.

jumbo_build_excluded
    Current value (from the default) = []
      From //build/config/jumbo.gni:10

jumbo_file_merge_limit
    Current value (from the default) = -1
      From //build/config/jumbo.gni:11

ldso_path
    Current value (from the default) = ""
      From //build/config/gcc/BUILD.gn:20

libcxx_abi_unstable
    Current value (from the default) = true
      From //build/config/c++/BUILD.gn:18

    lldb pretty printing only works when libc++ is built in the __1 (or __ndk1)
    namespaces.  For pretty printing to work out-of-the-box on Mac (where lldb
    is primarily used), this flag is set to false to build with the __1
    namespace (to maintain ABI compatibility, this implies building without
    _LIBCPP_ABI_UNSTABLE).  This is not necessary on non-component builds
    because we leave the ABI version set to __1 in that case because libc++
    symbols are not exported.
    TODO(thomasanderson): Set this to true by default once rL352899 is available
    in MacOS's lldb.

libcxx_is_shared
    Current value (from the default) = false
      From //build/config/c++/c++.gni:55

    WARNING: Setting this to a non-default value is highly discouraged.
    If true, libc++ will be built as a shared library; otherwise libc++ will be
    linked statically. Setting this to something other than the default is
    unsupported and can be broken by libc++ rolls. Note that if this is set to
    true, you must also set libcxx_abi_unstable=false, which is bad for
    performance and memory use.

libcxx_natvis_include
    Current value (from the default) = true
      From //build/config/c++/c++.gni:30

    Builds libcxx Natvis into the symbols for type visualization.
    Set to false to workaround http://crbug.com/966676 and
    http://crbug.com/966687.

libcxx_svn_revision
    Current value (from the default) = "375504"
      From //buildtools/deps_revisions.gni:8

    The libc++ svn revision that belongs to the git hash in DEPS. Used to cause
    full rebuilds on libc++ rolls.

libyuv_disable_jpeg
    Current value (from the default) = false
      From //third_party/libyuv/libyuv.gni:15

libyuv_include_tests
    Current value (from the default) = true
      From //third_party/libyuv/libyuv.gni:14

libyuv_symbols_visible
    Current value (from the default) = false
      From //third_party/libyuv/BUILD.gn:19

    When building a shared library using a target in WebRTC or
    Chromium projects that depends on libyuv, setting this flag
    to true makes libyuv symbols visible inside that library.

libyuv_use_gflags
    Current value = false
      From //.gn:73
    Overridden from the default = true
      From //third_party/libyuv/BUILD.gn:14

    Set to false to disable building with gflags.

libyuv_use_mmi
    Current value (from the default) = false
      From //third_party/libyuv/libyuv.gni:22

libyuv_use_msa
    Current value (from the default) = false
      From //third_party/libyuv/libyuv.gni:20

libyuv_use_neon
    Current value (from the default) = false
      From //third_party/libyuv/libyuv.gni:17

llvm_force_head_revision
    Current value (from the default) = false
      From //build/toolchain/toolchain.gni:18

    If this is set to true, or if LLVM_FORCE_HEAD_REVISION is set to 1
    in the environment, we use the revision in the llvm repo to determine
    the CLANG_REVISION to use, instead of the version hard-coded into
    //tools/clang/scripts/update.py. This should only be used in
    conjunction with setting LLVM_FORCE_HEAD_REVISION in the
    environment when `gclient runhooks` is run as well.

mac_allow_system_xcode_for_official_builds_for_testing
    Current value (from the default) = false
      From //build/config/mac/mac_sdk.gni:45

    Production builds should use hermetic Xcode. If you want to do production
    builds with system Xcode to test new SDKs, set this.
    Don't set this on any bots.


mac_deployment_target
    Current value (from the default) = "10.10.0"
      From //build/config/mac/mac_sdk.gni:19

    The MACOSX_DEPLOYMENT_TARGET variable used when compiling. This partially
    controls the minimum supported version of macOS for Chromium by
    affecting the symbol availability rules. This may differ from
    mac_min_system_version when dropping support for older macOSes but where
    additional code changes are required to be compliant with the availability
    rules.
    Must be of the form x.x.x for Info.plist files.

mac_deterministic_build
    Current value (from the default) = false
      From //build/toolchain/mac/BUILD.gn:35

    This makes the linker set timestamps in Mach-O files to 0. This isn't
    enabled by default because this breaks Xcode's lldb. This has been fixed in
    https://reviews.llvm.org/rL368199 but that has not yet made it into a public
    lldb release.

mac_min_system_version
    Current value (from the default) = "10.10.0"
      From //build/config/mac/mac_sdk.gni:27

    The value of the LSMinimmumSystemVersion in Info.plist files. This partially
    controls the minimum supported version of macOS for Chromium by
    affecting the Info.plist. This may differ from mac_deployment_target when
    dropping support for older macOSes. This should be greater than or equal to
    the mac_deployment_target version.
    Must be of the form x.x.x for Info.plist files.

mac_sdk_min
    Current value = "10.12"
      From //.gn:63
    Overridden from the default = "10.15"
      From //build/config/mac/mac_sdk_overrides.gni:12

mac_sdk_name
    Current value (from the default) = "macosx"
      From //build/config/mac/mac_sdk.gni:35

    The SDK name as accepted by xcodebuild.

mac_sdk_official_version
    Current value (from the default) = "10.15"
      From //build/config/mac/mac_sdk.gni:40

    The SDK version used when making official builds. This is a single exact
    version, not a minimum. If this version isn't available official builds
    will fail.

mac_sdk_path
    Current value (from the default) = ""
      From //build/config/mac/mac_sdk.gni:32

    Path to a specific version of the Mac SDK, not including a slash at the end.
    If empty, the path to the lowest version greater than or equal to
    mac_sdk_min is used.

max_jobs_per_link
    Current value (from the default) = 8
      From //build/config/compiler/compiler.gni:71

    Limit the number of jobs (threads/processes) the linker is allowed
    to use (for linkers that support this).

mips_use_mmi
    Current value (from the default) = false
      From //build/config/mips.gni:13

    MIPS MultiMedia Instruction compilation flag.

msan_track_origins
    Current value (from the default) = 2
      From //build/config/sanitizers/sanitizers.gni:45

    Track where uninitialized memory originates from. From fastest to slowest:
    0 - no tracking, 1 - track only the initial allocation site, 2 - track the
    chain of stores leading from allocation site to use site.

needs_gomacc_path_arg
    Current value (from the default) = false
      From //build/toolchain/goma.gni:14

    This flag is for ChromeOS compiler wrapper.
    By passing gomacc path via cmd-line arg, ChromeOS' compiler wrapper
    invokes gomacc inside it.

optimize_for_fuzzing
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:95

    Optimize for coverage guided fuzzing (balance between speed and number of
    branches). Can be also used to remove non-determinism and other issues.

pgo_data_path
    Current value (from the default) = ""
      From //build/config/compiler/pgo/pgo.gni:17

    When using chrome_pgo_phase = 2, read profile data from this path.


pkg_config
    Current value (from the default) = ""
      From //build/config/linux/pkg_config.gni:33

    A pkg-config wrapper to call instead of trying to find and call the right
    pkg-config directly. Wrappers like this are common in cross-compilation
    environments.
    Leaving it blank defaults to searching PATH for 'pkg-config' and relying on
    the sysroot mechanism to find the right .pc files.

proprietary_codecs
    Current value (from the default) = false
      From //build/config/features.gni:26

    Enables proprietary codecs and demuxers; e.g. H264, AAC, MP3, and MP4.
    We always build Google Chrome and Chromecast with proprietary codecs.
   
    Note: this flag is used by WebRTC which is DEPSed into Chrome. Moving it
    out of //build will require using the build_overrides directory.

rtc_audio_device_plays_sinus_tone
    Current value (from the default) = false
      From //webrtc.gni:169

    When set to true, replace the audio output with a sinus tone at 440Hz.
    The ADM will ask for audio data from WebRTC but instead of reading real
    audio samples from NetEQ, a sinus tone will be generated and replace the
    real audio samples.

rtc_build_examples
    Current value (from the default) = true
      From //webrtc.gni:106

    Set this to false to skip building examples.

rtc_build_json
    Current value (from the default) = true
      From //webrtc.gni:216

    Disable these to not build components which can be externally provided.

rtc_build_libevent
    Current value (from the default) = false
      From //webrtc.gni:228

rtc_build_libsrtp
    Current value (from the default) = true
      From //webrtc.gni:217

rtc_build_libvpx
    Current value (from the default) = true
      From //webrtc.gni:218

rtc_build_opus
    Current value (from the default) = true
      From //webrtc.gni:220

rtc_build_ssl
    Current value (from the default) = true
      From //webrtc.gni:221

rtc_build_tools
    Current value (from the default) = true
      From //webrtc.gni:109

    Set this to false to skip building tools.

rtc_build_usrsctp
    Current value (from the default) = true
      From //webrtc.gni:222

rtc_build_with_neon
    Current value (from the default) = false
      From //webrtc.gni:143

rtc_builtin_ssl_root_certificates
    Current value (from the default) = true
      From //webrtc.gni:65

    Setting this to false will require the API user to pass in their own
    SSLCertificateVerifier to verify the certificates presented from a
    TLS-TURN server. In return disabling this saves around 100kb in the binary.

rtc_disable_check_msg
    Current value (from the default) = false
      From //webrtc.gni:260

    Set this to true to disable detailed error message and logging for
    RTC_CHECKs.

rtc_disable_logging
    Current value (from the default) = false
      From //webrtc.gni:253

    Set this to true to fully remove logging from WebRTC.

rtc_disable_metrics
    Current value (from the default) = false
      From //webrtc.gni:263

    Set this to true to disable webrtc metrics.

rtc_disable_trace_events
    Current value (from the default) = false
      From //webrtc.gni:256

    Set this to true to disable trace events.

rtc_enable_android_aaudio
    Current value (from the default) = false
      From //webrtc.gni:128

    Enable use of Android AAudio which requires Android SDK 26 or above and
    NDK r16 or above.

rtc_enable_bwe_test_logging
    Current value (from the default) = false
      From //webrtc.gni:103

    Set this to true to enable BWE test logging.

rtc_enable_external_auth
    Current value (from the default) = false
      From //webrtc.gni:93

    Enable when an external authentication mechanism is used for performing
    packet authentication for RTP packets instead of libsrtp.

rtc_enable_libevent
    Current value (from the default) = false
      From //webrtc.gni:227

rtc_enable_protobuf
    Current value (from the default) = true
      From //webrtc.gni:210

    Enables the use of protocol buffers for debug recordings.

rtc_enable_sctp
    Current value (from the default) = true
      From //webrtc.gni:213

    Set this to disable building with support for SCTP data channels.

rtc_enable_symbol_export
    Current value (from the default) = false
      From //webrtc.gni:41

    Setting this to true will make RTC_EXPORT (see rtc_base/system/rtc_export.h)
    expand to code that will manage symbols visibility.

rtc_exclude_audio_processing_module
    Current value (from the default) = false
      From //webrtc.gni:100

    Selects whether the audio processing module should be excluded.

rtc_exclude_field_trial_default
    Current value (from the default) = false
      From //webrtc.gni:53

rtc_exclude_metrics_default
    Current value (from the default) = false
      From //webrtc.gni:60

    Setting this to true will define WEBRTC_EXCLUDE_METRICS_DEFAULT which
    will tell the pre-processor to remove the default definition of symbols
    needed to use metrics. In that case a new implementation needs to be
    provided.

rtc_exclude_transient_suppressor
    Current value (from the default) = false
      From //webrtc.gni:267

    Set this to true to exclude the transient suppressor in the audio processing
    module from the build.

rtc_include_builtin_audio_codecs
    Current value (from the default) = true
      From //webrtc.gni:184

    When set to false, builtin audio encoder/decoder factories and all the
    audio codecs they depend on will not be included in libwebrtc.{a|lib}
    (they will still be included in libjingle_peerconnection_so.so and
    WebRTC.framework)

rtc_include_builtin_video_codecs
    Current value (from the default) = true
      From //webrtc.gni:190

    When set to false, builtin video encoder/decoder factories and all the
    video codecs they depends on will not be included in libwebrtc.{a|lib}
    (they will still be included in libjingle_peerconnection_so.so and
    WebRTC.framework)

rtc_include_ilbc
    Current value (from the default) = true
      From //webrtc.gni:68

    Include the iLBC audio codec?

rtc_include_internal_audio_device
    Current value (from the default) = true
      From //webrtc.gni:243

    Chromium uses its own IO handling, so the internal ADM is only built for
    standalone WebRTC.

rtc_include_opus
    Current value (from the default) = true
      From //webrtc.gni:71

    Disable this to avoid building the Opus audio codec.

rtc_include_pulse_audio
    Current value (from the default) = true
      From //webrtc.gni:239

    Excluded in Chromium since its prerequisites don't require Pulse Audio.

rtc_include_tests
    Current value (from the default) = true
      From //webrtc.gni:246

    Include tests in standalone checkout.

rtc_jsoncpp_root
    Current value (from the default) = "//third_party/jsoncpp/source/include"
      From //webrtc.gni:82

    Used to specify an external Jsoncpp include path when not compiling the
    library that comes with WebRTC (i.e. rtc_build_json == 0).

rtc_libvpx_build_vp9
    Current value (from the default) = true
      From //webrtc.gni:219

rtc_link_pipewire
    Current value (from the default) = false
      From //webrtc.gni:121

    Set this to link PipeWire directly instead of using the dlopen.

rtc_opus_support_120ms_ptime
    Current value (from the default) = true
      From //webrtc.gni:75

    Enable this if the Opus version upon which WebRTC is built supports direct
    encoding of 120 ms packets.

rtc_opus_variable_complexity
    Current value (from the default) = false
      From //webrtc.gni:78

    Enable this to let the Opus audio codec change complexity on the fly.

rtc_prefer_fixed_point
    Current value (from the default) = false
      From //webrtc.gni:89

    Selects fixed-point code where possible.

rtc_sanitize_coverage
    Current value (from the default) = ""
      From //webrtc.gni:135

    Set to "func", "block", "edge" for coverage generation.
    At unit test runtime set UBSAN_OPTIONS="coverage=1".
    It is recommend to set include_examples=0.
    Use llvm's sancov -html-report for human readable reports.
    See http://clang.llvm.org/docs/SanitizerCoverage.html .

rtc_ssl_root
    Current value (from the default) = ""
      From //webrtc.gni:86

    Used to specify an external OpenSSL include path when not compiling the
    library that comes with WebRTC (i.e. rtc_build_ssl == 0).

rtc_use_absl_mutex
    Current value (from the default) = false
      From //webrtc.gni:159

    Enable this flag to make webrtc::Mutex be implemented by absl::Mutex.

rtc_use_dummy_audio_file_devices
    Current value (from the default) = false
      From //webrtc.gni:163

    By default, use normal platform audio support or dummy audio, but don't
    use file-based audio playout and record.

rtc_use_gtk
    Current value (from the default) = true
      From //webrtc.gni:236

    Build sources requiring GTK. NOTICE: This is not present in Chrome OS
    build environments, even if available for Chromium builds.

rtc_use_h264
    Current value (from the default) = false
      From //webrtc.gni:156

rtc_use_metal_rendering
    Current value (from the default) = true
      From //webrtc.gni:178

    Determines whether Metal is available on iOS/macOS.

rtc_use_pipewire
    Current value (from the default) = false
      From //webrtc.gni:118

    Set this to use PipeWire on the Wayland display server.
    By default it's only enabled on desktop Linux (excludes ChromeOS) and
    only when using the sysroot as PipeWire is not available in older and
    supported Ubuntu and Debian distributions.

rtc_use_x11
    Current value (from the default) = false
      From //webrtc.gni:112

    Set this to false to skip building code that requires X11.

rtc_use_x11_extensions
    Current value (from the default) = false
      From //webrtc.gni:250

    Set this to false to skip building code that also requires X11 extensions
    such as Xdamage, Xfixes.

rtc_win_undef_unicode
    Current value (from the default) = false
      From //webrtc.gni:198

    When set to true and in a standalone build, it will undefine UNICODE and
    _UNICODE (which are always defined globally by the Chromium Windows
    toolchain).
    This is only needed for testing purposes, WebRTC wants to be sure it
    doesn't assume /DUNICODE and /D_UNICODE but that it explicitly uses
    wide character functions.

sample_profile_is_accurate
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:112

    Whether we should consider the profile we're using to be accurate. Accurate
    profiles have the benefit of (potentially substantial) binary size
    reductions, by instructing the compiler to optimize cold and uncovered
    functions heavily for size. This often comes at the cost of performance.

sanitizer_coverage_flags
    Current value (from the default) = ""
      From //build/config/sanitizers/sanitizers.gni:105

    Value for -fsanitize-coverage flag. Setting this causes
    use_sanitizer_coverage to be enabled.
    This flag is not used for libFuzzer (use_libfuzzer=true). Instead, we use:
        -fsanitize=fuzzer-no-link
    Default value when unset and use_fuzzing_engine=true:
        trace-pc-guard
    Default value when unset and use_sanitizer_coverage=true:
        trace-pc-guard,indirect-calls

strip_debug_info
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:39

    Android-only: Strip the debug info of libraries within lib.unstripped to
    reduce size. As long as symbol_level > 0, this will still allow stacks to be
    symbolized.

symbol_level
    Current value = 0
      From //out/Default/args.gn:3
    Overridden from the default = -1
      From //build/config/compiler/compiler.gni:34

    How many symbols to include in the build. This affects the performance of
    the build since the symbols are large and dealing with them is slow.
      2 means regular build with symbols.
      1 means minimal symbols, usually enough for backtraces only. Symbols with
    internal linkage (static functions or those in anonymous namespaces) may not
    appear when using this level.
      0 means no symbols.
      -1 means auto-set according to debug/release and platform.

sysroot
    Current value (from the default) = ""
      From //build/config/sysroot.gni:20

    The path of the sysroot for the current toolchain. If empty, default
    sysroot is used.

system_libdir
    Current value (from the default) = "lib"
      From //build/config/linux/pkg_config.gni:47

    CrOS systemroots place pkgconfig files at <systemroot>/usr/share/pkgconfig
    and one of <systemroot>/usr/lib/pkgconfig or <systemroot>/usr/lib64/pkgconfig
    depending on whether the systemroot is for a 32 or 64 bit architecture.
   
    When build under GYP, CrOS board builds specify the 'system_libdir' variable
    as part of the GYP_DEFINES provided by the CrOS emerge build or simple
    chrome build scheme. This variable permits controlling this for GN builds
    in similar fashion by setting the `system_libdir` variable in the build's
    args.gn file to 'lib' or 'lib64' as appropriate for the target architecture.

target_cpu
    Current value (from the default) = ""
      (Internally set; try `gn help target_cpu`.)

target_os
    Current value (from the default) = ""
      (Internally set; try `gn help target_os`.)

target_rpath
    Current value (from the default) = ""
      From //build/config/chromecast_build.gni:27

    If non empty, rpath of executables is set to this.
    If empty, default value is used.

target_sysroot
    Current value (from the default) = ""
      From //build/config/sysroot.gni:13

    The path of the sysroot that is applied when compiling using the target
    toolchain.

target_sysroot_dir
    Current value (from the default) = "//build/linux"
      From //build/config/sysroot.gni:16

    The path to directory containing linux sysroot images.

thin_lto_enable_optimizations
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:122

toolkit_views
    Current value (from the default) = true
      From //build/config/ui.gni:34

    True means the UI is built using the "views" framework.

treat_warnings_as_errors
    Current value (from the default) = true
      From //build/config/compiler/BUILD.gn:50

    Default to warnings as errors for default workflow, where we catch
    warnings with known toolchains. Allow overriding this e.g. for Chromium
    builds on Linux that could use a different version of the compiler.
    With GCC, warnings in no-Chromium code are always not treated as errors.

use_afl
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:80

    Compile for fuzzing with AFL.

use_allocator
    Current value (from the default) = "none"
      From //base/allocator/allocator.gni:30

    Memory allocator to use. Set to "none" to use default allocator.

use_allocator_shim
    Current value (from the default) = true
      From //base/allocator/allocator.gni:33

    Causes all the allocations to be routed via allocator_shim.cc.

use_aura
    Current value (from the default) = false
      From //build/config/ui.gni:29

    Indicates if Aura is enabled. Aura is a low-level windowing library, sort
    of a replacement for GDI or GTK.

use_cfi_cast
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:123

    Enable checks for bad casts: derived cast and unrelated cast.
    TODO(krasin): remove this, when we're ready to add these checks by default.
    https://crbug.com/626794

use_cfi_diag
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:69

    Print detailed diagnostics when Control Flow Integrity detects a violation.

use_cfi_icall
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:65

    Enable checks for indirect function calls via a function pointer.
    TODO(pcc): remove this when we're ready to add these checks by default.
    https://crbug.com/701919

use_cfi_recover
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:73

    Let Control Flow Integrity continue execution instead of crashing when
    printing diagnostics (use_cfi_diag = true).

use_cfi_diag
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:69

    Print detailed diagnostics when Control Flow Integrity detects a violation.

use_cfi_icall
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:65

    Enable checks for indirect function calls via a function pointer.
    TODO(pcc): remove this when we're ready to add these checks by default.
    https://crbug.com/701919

use_cfi_recover
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:73

    Let Control Flow Integrity continue execution instead of crashing when
    printing diagnostics (use_cfi_diag = true).

use_cfi_diag
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:69

    Print detailed diagnostics when Control Flow Integrity detects a violation.

use_cfi_icall
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:65

    Enable checks for indirect function calls via a function pointer.
    TODO(pcc): remove this when we're ready to add these checks by default.
    https://crbug.com/701919

use_cfi_recover
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:73

    Let Control Flow Integrity continue execution instead of crashing when
    printing diagnostics (use_cfi_diag = true).

use_clang_coverage
    Current value (from the default) = false
      From //build/config/coverage/coverage.gni:17

    Enable Clang's Source-based Code Coverage.

use_clang_profiling
    Current value (from the default) = false
      From //build/config/profiling/profiling.gni:9

use_clang_profiling_inside_sandbox
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:174

use_custom_libcxx
    Current value (from the default) = true
      From //build/config/c++/c++.gni:14

use_custom_libcxx_for_host
    Current value (from the default) = false
      From //build/config/c++/c++.gni:25

    Use libc++ instead of stdlibc++ when using the host_cpu toolchain, even if
    use_custom_libcxx is false. This is useful for cross-compiles where a custom
    toolchain for the target_cpu has been set as the default toolchain, but
    use_custom_libcxx should still be true when building for the host.  The
    expected usage is to set use_custom_libcxx=false and
    use_custom_libcxx_for_host=true in the passed in buildargs.

use_cxx11
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:83

    Allow projects that wish to stay on C++11 to override Chromium's default.

use_cxx11_on_android
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:157

    C++11 may not be an option if Android test infrastructure is used.

use_dbus
    Current value (from the default) = false
      From //build/config/features.gni:31

use_debug_fission
    Current value (from the default) = "default"
      From //build/config/compiler/compiler.gni:55

    use_debug_fission: whether to use split DWARF debug info
    files. This can reduce link time significantly, but is incompatible
    with some utilities such as icecc and ccache. Requires gold and
    gcc >= 4.8 or clang.
    http://gcc.gnu.org/wiki/DebugFission
   
    This is a placeholder value indicating that the code below should set
    the default.  This is necessary to delay the evaluation of the default
    value expression until after its input values such as use_gold have
    been set, e.g. by a toolchain_args() block.

use_dummy_lastchange
    Current value (from the default) = false
      From //build/util/lastchange.gni:9

use_external_fuzzing_engine
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:83

    Compile for fuzzing with an external engine (e.g., Grammarinator).

use_ghash
    Current value (from the default) = true
      From //build/config/compiler/BUILD.gn:112

    Turn this on to use ghash feature of lld for faster debug link on Windows.
    http://blog.llvm.org/2018/01/improving-link-time-on-windows-with.html

use_gio
    Current value (from the default) = false
      From //build/config/features.gni:33

use_glib
    Current value (from the default) = false
      From //build/config/ui.gni:37

    Whether we should use glib, a low level C utility library.

use_gold
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:183

use_goma
    Current value (from the default) = false
      From //build/toolchain/goma.gni:9

    Set to true to enable distributed compilation using Goma.

use_goma_thin_lto
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:67

    If true, use Goma for ThinLTO code generation where applicable.

use_icf
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:170

    Set to true to use icf, Identical Code Folding.
   
    icf=all is broken in older golds, see
    https://sourceware.org/bugzilla/show_bug.cgi?id=17704
    chromeos binutils has been patched with the fix, so always use icf there.
    The bug only affects x86 and x64, so we can still use ICF when targeting
    other architectures.
   
    lld doesn't have the bug.

use_jacoco_coverage
    Current value (from the default) = false
      From //build/config/coverage/coverage.gni:20

    Enables JaCoCo Java code coverage.

use_java_goma
    Current value (from the default) = false
      From //build/toolchain/goma.gni:26

    TODO(crbug.com/726475): true if use_goma = true in the future.

use_jumbo_build
    Current value (from the default) = false
      From //build/config/jumbo.gni:9

use_libfuzzer
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:77

    Compile for fuzzing with LLVM LibFuzzer.
    See http://www.chromium.org/developers/testing/libfuzzer

use_libjpeg_turbo
    Current value (from the default) = true
      From //third_party/libjpeg.gni:11

    Uses libjpeg_turbo as the jpeg implementation. Has no effect if
    use_system_libjpeg is set.

use_lld
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:177

    Set to true to use lld, the LLVM linker.

use_locally_built_instrumented_libraries
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:49

    Use dynamic libraries instrumented by one of the sanitizers instead of the
    standard system libraries. Set this flag to build the libraries from source.

use_ozone
    Current value (from the default) = false
      From //build/config/ui.gni:25

    Indicates if Ozone is enabled. Ozone is a low-level library layer for Linux
    that does not require X11. Enabling this feature disables use of x11.

use_partition_alloc
    Current value (from the default) = true
      From //build/config/allocator.gni:9

    Partition alloc is included by default except iOS.
    TODO(thakis): Move this elsewhere, probably
    base/allocator/partition_allocator/buildflags.gni

use_rtti
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:74

    Build with C++ RTTI enabled. Chromium builds without RTTI by default,
    but some sanitizers are known to require it, like CFI diagnostics
    and UBsan variants.

use_sanitizer_configs_without_instrumentation
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:113

    When enabled, only relevant sanitizer defines are set, but compilation
    happens with no extra flags. This is useful when in component build
    enabling sanitizers only in some of the components.

use_sanitizer_coverage
    Current value (from the default) = false
      From //build/config/sanitizers/sanitizers.gni:165

use_sysroot
    Current value (from the default) = true
      From //build/config/sysroot.gni:24

    Controls default is_linux sysroot. If set to true, and sysroot
    is empty, default sysroot is calculated.

use_system_freetype
    Current value (from the default) = false
      From //build/config/freetype/freetype.gni:13

    Blink needs a recent and properly build-configured FreeType version to
    support OpenType variations, color emoji and avoid security bugs. By default
    we ship and link such a version as part of Chrome. For distributions that
    prefer to keep linking to the version the system, FreeType must be newer
    than version 2.7.1 and have color bitmap support compiled in. WARNING:
    System FreeType configurations other than as described WILL INTRODUCE TEXT
    RENDERING AND SECURITY REGRESSIONS.

use_system_harfbuzz
    Current value (from the default) = false
      From //third_party/harfbuzz-ng/harfbuzz.gni:11

    Blink uses a cutting-edge version of Harfbuzz; most Linux distros do not
    contain a new enough version of the code to work correctly. However,
    ChromeOS chroots (i.e, real ChromeOS builds for devices) do contain a
    new enough version of the library, and so this variable exists so that
    ChromeOS can build against the system lib and keep binary sizes smaller.

use_system_libjpeg
    Current value (from the default) = false
      From //third_party/libjpeg.gni:7

    Uses system libjpeg. If true, overrides use_libjpeg_turbo.

use_tcmalloc_small_but_slow
    Current value (from the default) = false
      From //base/allocator/BUILD.gn:17

    Provide a way to build tcmalloc with a low memory footprint.

use_text_section_splitting
    Current value (from the default) = false
      From //build/config/compiler/BUILD.gn:142

    This argument is to control whether enabling text section splitting in the
    final binary. When enabled, the separated text sections with prefix
    '.text.hot', '.text.unlikely', '.text.startup' and '.text.exit' will not be
    merged to '.text' section. This allows us to identify the hot code section
    ('.text.hot') in the binary which may be mlocked or mapped to huge page to
    reduce TLB misses which gives performance improvement on cpu usage.
    The gold linker by default has text section splitting enabled.

use_thin_lto
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:62

    Enables support for ThinLTO, which links 3x-10x faster than full LTO. See
    also http://blog.llvm.org/2016/06/thinlto-scalable-and-incremental-lto.html
    Use it by default on official-optimized android and Chrome OS builds, but
    not ARC or linux-chromeos since it's been seen to not play nicely with
    Chrome's clang. crbug.com/1033839


use_udev
    Current value (from the default) = false
      From //build/config/features.gni:29

    libudev usage. This currently only affects the content layer.

use_xcode_clang
    Current value (from the default) = false
      From //build/toolchain/toolchain.gni:23

    Compile with Xcode version of clang instead of hermetic version shipped
    with the build. Used to be used iOS for official builds, but is now off by
    default for all configurations.

using_mismatched_sample_profile
    Current value (from the default) = false
      From //build/config/compiler/compiler.gni:78

    Whether we're using a sample profile collected on an architecture different
    than the one we're compiling for.
   
    It's currently not possible to collect AFDO profiles on anything but
    x86{,_64}.

v8_current_cpu
    Current value (from the default) = "x64"
      From //build/config/v8_target_cpu.gni:60

    This argument is declared here so that it can be overridden in toolchains.
    It should never be explicitly set by the user.

v8_target_cpu
    Current value (from the default) = ""
      From //build/config/v8_target_cpu.gni:33

    This arg is used when we want to tell the JIT-generating v8 code
    that we want to have it generate for an architecture that is different
    than the architecture that v8 will actually run on; we then run the
    code under an emulator. For example, we might run v8 on x86, but
    generate arm code and run that under emulation.
   
    This arg is defined here rather than in the v8 project because we want
    some of the common architecture-specific args (like arm_float_abi or
    mips_arch_variant) to be set to their defaults either if the current_cpu
    applies *or* if the v8_current_cpu applies.
   
    As described below, you can also specify the v8_target_cpu to use
    indirectly by specifying a `custom_toolchain` that contains v8_$cpu in the
    name after the normal toolchain.

    For example, `gn gen --args="custom_toolchain=...:clang_x64_v8_arm64"`
    is equivalent to setting --args=`v8_target_cpu="arm64"`. Setting
    `custom_toolchain` is more verbose but makes the toolchain that is
    (effectively) being used explicit.
   
    v8_target_cpu can only be used to target one architecture in a build,
    so if you wish to build multiple copies of v8 that are targeting
    different architectures, you will need to do something more
    complicated involving multiple toolchains along the lines of
    custom_toolchain, above.

x64_arch
    Current value (from the default) = ""
      From //build/config/x64.gni:16

    The micro architecture of x64 cpu. This will be a string like "haswell" or
    "skylake". An empty string means to use the default architecture which is
    "x86-64".
    CPU options for "x86-64" in GCC can be found at
    https://gcc.gnu.org/onlinedocs/gcc/x86-Options.html
    CPU options for "x86-64" in llvm can be found at
    https://github.com/llvm/llvm-project/blob/master/llvm/include/llvm/Support/X86TargetParser.def


```