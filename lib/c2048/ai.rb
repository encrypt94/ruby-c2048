module C2048
  module AI
    def self.best_move(board)
      ary = FFI::MemoryPointer.new(:int, 16)
      ary.write_array_of_int(board)
      move = C2048::C.best_move(ary)
      if move < 0
        return :no_move
      else
        return [:up, :right, :down, :left][move]
      end
    end
  end
end
