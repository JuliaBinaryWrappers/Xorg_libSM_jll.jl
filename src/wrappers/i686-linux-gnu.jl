# Autogenerated wrapper script for Xorg_libSM_jll for i686-linux-gnu
export libSM

using Xorg_libICE_jll
JLLWrappers.@generate_wrapper_header("Xorg_libSM")
JLLWrappers.@declare_library_product(libSM, "libSM.so.6")
function __init__()
    JLLWrappers.@generate_init_header(Xorg_libICE_jll)
    JLLWrappers.@init_library_product(
        libSM,
        "lib/libSM.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
