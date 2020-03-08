# Autogenerated wrapper script for Xorg_libSM_jll for powerpc64le-linux-gnu
export libSM

using Xorg_libICE_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libSM`
const libSM_splitpath = ["lib", "libSM.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libSM_path = ""

# libSM-specific global declaration
# This will be filled out by __init__()
libSM_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libSM = "libSM.so.6"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Xorg_libSM")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Xorg_libICE_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Xorg_libICE_jll.LIBPATH_list,))

    global libSM_path = normpath(joinpath(artifact_dir, libSM_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libSM_handle = dlopen(libSM_path)
    push!(LIBPATH_list, dirname(libSM_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

