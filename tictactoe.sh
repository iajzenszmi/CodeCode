#!/bin/bash
declare -a B=( e e e  e e e  e e e )  # Board
 
function show(){  # show B - underline first 2 rows; highlight position; number empty positoins
  local -i p POS=${1:-9}; local UL BOLD="\e[1m" GREEN="\e[32m" DIM="\e[2m" OFF="\e[m" ULC="\e[4m"
  for p in 0 1 2 3 4 5 6 7 8; do
    [[ p%3 -eq 0 ]] && printf "  "                             # indent boards
    UL=""; [[ p/3 -lt 2 ]] && UL=$ULC                          # underline first 2 rows
    [[ p -eq POS ]]   && printf "$BOLD$GREEN"                  # bold and colour for this position
    [[ ${B[p]} = e ]] && printf "$UL$DIM%d$OFF" $p || printf "$UL%s$OFF" ${B[p]}  # num or UL
    { [[ p%3 -lt 2 ]] && printf "$UL | $OFF"; } || printf "\n" # underline vertical bars or NL
  done
};
 
function win(){  # win 'X' 3 return true if X wins after move in position 3
  local ME=$1; local -i p=$2
  [[ ${B[p/3*3]} = $ME && ${B[p/3*3+1]} = $ME && ${B[p/3*3+2]} = $ME ]] && return 0  # row
  [[ ${B[p]}     = $ME && ${B[(p+3)%9]} = $ME && ${B[(p+6)%9]} = $ME ]] && return 0  # col
  [[ ${B[4]} != $ME ]] && return 1                                                   # don't test diags
  [[ p%4 -eq 0 && ${B[0]} = $ME && ${B[8]} = $ME ]] && return 0                      # TL - BR diag
  [[ p%4 -eq 2 || p -eq 4 ]] && [[ ${B[2]} = $ME && ${B[6]} = $ME ]]                 # TR - BL diag
};
 
function bestMove(){  # return best move or 9 if none possible
  local ME=$1 OP=$2; local -i o s p
  local -ia S=( -9 -9 -9  -9 -9 -9  -9 -9 -9 )  # score board
  local -a SB                                   # save board
  [[ ${B[*]//[!e]} = "" ]] && return 9          # game over
  SB=( ${B[*]} )                                # save Board
  for p in 0 1 2 3 4 5 6 7 8; do                          # for each board position
    [[ ${B[p]} != e ]] && continue                        # skip occupied positions
    B[p]=$ME                                              # occupy position
    win $ME $p && { S[p]=2; B=( ${SB[*]} ); return $p; }  # ME wins so this is best move
    bestMove $OP $ME; o=$?                                # what will opponent do
    [[ o -le 8 ]] && { B[o]=$OP; win $OP $o; s=$?; }      # opponent can make a legal move
    S[p]=${s:-1}                                          # save result of opponent move
    B=( ${SB[*]} )                                        # restore board after each trial run
  done
  local -i best=-1; local -ia MOV=(1)
  for p in 0 1 2 3 4 5 6 7 8; do                     # find all best moves
    [[ S[p] -lt 0 ]] && continue                     # dont bother with occupied positions
    [[ S[p] -eq S[best] ]] && { MOV+=(p); best=p; }  # add this move to current list
    [[ S[p] -gt S[best] ]] && { MOV=(p); best=p; }   # a better move so scrap list and start again
  done
  return ${MOV[ RANDOM%${#MOV[*]} ]}  # pick one at random
};
 
function getMove(){  # getMove from opponent
  [[ $ME = X ]] && { bestMove $ME $OP; return $?; }     # pick X move automatically
  read -p "O move: " -n 1; printf "\n"; return $REPLY   # get opponents move
};
 
function turn(){  # turn starts or continues a game. It is ME's turn
  local -i p; local ME=$1 OP=$2
  getMove; p=$?; [[ p -gt 8 ]] && { printf "Draw!\n"; show; return 1; }  # no move so a draw
  B[p]=$ME; printf "%s moves %d\n" $ME $p                                # mark board
  win $ME $p && { printf "%s wins!\n" $ME; show $p; [[ $ME = X ]] && return 2; return 0; }
  [[ ${B[*]//[!e]} = "" ]] && { printf "Draw!\n"; show; return 1; }      # no move so a draw
  show $p; turn $OP $ME                                                  # opponent moves
};
 
printf "Bic Bash Bow\n"
show; [[ RANDOM%2 -eq 0 ]] && { turn O X; exit $?; } || turn X O
