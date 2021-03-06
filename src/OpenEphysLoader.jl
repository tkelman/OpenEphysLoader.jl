__precompile__()
"""
Module to read the binary data files created by the OpenEphys GUI

Provides array interfaces to file contents, without loading the entire file into memory
"""
module OpenEphysLoader
# Module to interact with Open Ephys files
import Base: show,
    showcompact,
    size,
    linearindexing,
    getindex,
    setindex!,
    length

export
    # types
    OriginalHeader,
    ContinuousFile,
    OEArray,
    OEContArray,
    SampleArray,
    TimeArray,
    RecNoArray,
    JointArray,
    CorruptedException

## source files
include("original.jl")
include("continuous.jl")

end # module OpenEphys
