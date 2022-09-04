#!/bin/bash

#Number Guessing game

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo "Enter your username:"
read USERNAME

USERNAME_RESULT=$($PSQL "SELECT username FROM guessing_game WHERE username='$USERNAME'")

#if not found
if [[ -z $USERNAME_RESULT ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."

else 
  GAMES_PLAYED=$($PSQL "SELECT COUNT(username) FROM guessing_game WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(score) FROM guessing_game WHERE username='$USERNAME'")
  #GAMES_PLAYED=${GAMES_PLAYED// }
  #BEST_GAME=${BEST_GAME// }
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
#set random number to be used for game
SECRET=$[ $RANDOM % 1000 + 1 ]

TRIES=0
GUESS() { 
  if [[ $1 ]]
  then
  echo "$1"
  fi
read TRY
if [[ ! $TRY =~ ^[0-9]+$ ]]
then
  GUESS "That is not an integer, guess again:"
else
  TRIES=$((TRIES+1))
  #compare guess to secret
  #if not correct
  if [[ $TRY != $SECRET ]]
  then
    if [[ $TRY > $SECRET ]]
    then
      GUESS "It's lower than that, guess again:"
    else
      GUESS "It's higher than that, guess again:"
    fi 
  else
    echo -e "You guessed it in $TRIES tries. The secret number was $SECRET. Nice job!"
    INSERT_RESULT=$($PSQL "INSERT INTO guessing_game(username, score) VALUES('$USERNAME',$TRIES)")
  fi
fi
}

GUESS "Guess the secret number between 1 and 1000:"