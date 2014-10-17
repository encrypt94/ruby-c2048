module C2048
  module C
    extend FFI::Library
    ffi_lib './c2048.so'
    attach_function :best_move, [:pointer], :int
  end
end
