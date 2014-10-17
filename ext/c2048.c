#include "./c2048/src/board.h"
#include "./c2048/src/ai.h"
#include "./c2048/src/precalc.h"
#include "./c2048/src/bitmanip.h"
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <assert.h>

int best_move(int* b)
{
  int seed = time(NULL);
  srand(seed);
  precalc_init();
  board_t board = board_init();
  int i, best_move = -1;
  for(i = 0; i < 16; i++)
    {
      board.cells[i] = b[i];
    }
  board.score = 0;
  board_setup_bitfields(&board);
  ai_find_best_move(&board, &best_move);    
  return best_move;  
}
