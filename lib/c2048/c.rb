module C2048
  module C
    extend FFI::Library
    ffi_lib File.realpath(File.join(__FILE__, '..', 'c2048.so'))
    attach_function :best_move, [:pointer], :int
  end
end
