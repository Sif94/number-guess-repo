#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only -c"

COUNTER=1

NUMBER=$(( RANDOM % 1001 ))

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME';")

if [[ -z $USER_ID ]] ; then

    echo "Welcome, $USERNAME! It looks like this is your first time here."

    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")

    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
  else

    USER_INFO=$($PSQL "SELECT COUNT(*) AS games_played, MIN(tries) AS best_game FROM games WHERE user_id=$USER_ID;")

    echo "$USER_INFO" | while read GAMES_PLAYED BAR BEST_GAME

    do

      echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

    done
fi

echo "Guess the secret number between 1 and 1000:"
read INPUT_NUMBER

while [[ ! $INPUT_NUMBER =~ ^[0-9]+$ ]] ; do

  echo "That is not an integer, guess again:"
  read INPUT_NUMBER

done

while [[ $INPUT_NUMBER != $NUMBER ]] ; do

  if [[ $INPUT_NUMBER -gt $NUMBER ]] ; then

    COUNTER=$(( COUNTER + 1 ))

    echo "It's lower than that, guess again:"
    read INPUT_NUMBER

  elif [[ $INPUT_NUMBER -lt $NUMBER ]] ; then

    COUNTER=$(( COUNTER + 1 ))

    echo "It's higher than that, guess again:"
    read INPUT_NUMBER

  fi
done

INSER_GAME_INFO=$($PSQL "INSERT INTO games(user_id, tries) VALUES($USER_ID, $COUNTER);")

echo "You guessed it in $COUNTER tries. The secret number was $NUMBER. Nice job!"

