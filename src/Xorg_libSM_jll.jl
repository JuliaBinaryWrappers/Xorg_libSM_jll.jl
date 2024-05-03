# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Xorg_libSM_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Xorg_libSM")
JLLWrappers.@generate_main_file("Xorg_libSM", UUID("c834827a-8449-5923-a945-d239c165b7dd"))
end  # module Xorg_libSM_jll
