#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

ENDGAME(){
  if [[ $THE_USER -eq 1 ]];
  then
    NUM_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played=$((PLAYED++)) WHERE username='$USERNAME'")
    if [[ $NUM_GUESS -lt $BEST_GAME ]]
      then
      NEW_BEST_GUESS=$($PSQL "UPDATE users SET best_game=$NUM_GUESS WHERE username='$USERNAME'")
    fi
  elif [[ $THE_USER -eq 0 ]];
  then
    INSERT_NEW_USER=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 1, $NUM_GUESS)")
  fi
}

MORE_GUESS_GAME(){
  if [[ $USER_GUESS -eq $NUM_TO_GUESS ]];
  then
    echo "You guessed it in $NUM_GUESS tries. The secret number was $NUM_TO_GUESS. Nice job!"
    ENDGAME
  elif [[ $USER_GUESS -lt $NUM_TO_GUESS ]];
  then
    echo -e "\nIt's higher than that, guess again:"
    ((NUM_GUESS++))
    INT_CHECK
  elif [[ $USER_GUESS -gt $NUM_TO_GUESS ]];
  then
    echo -e "\nIt's lower than that, guess again:"
    ((NUM_GUESS++))
    INT_CHECK
  fi
}

INT_CHECK(){
  read USER_GUESS
  if ! [[ $USER_GUESS =~ ^[0-9]+$ ]];
  then
    echo "That is not an integer, guess again:"
    INT_CHECK
  else
    MORE_GUESS_GAME
  fi
}

GAME(){
  NUM_TO_GUESS=$((1 + RANDOM % 1000))
  echo -e "\nGuess the secret number between 1 and 1000:"
  NUM_GUESS=1
  INT_CHECK
}

USER_GREETING(){
  if [[ $THE_USER -eq 1 ]];
  then
    PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
    PLAYED_UPDATED=$(echo $PLAYED | sed 's/ //')
    BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")
    BEST_GAME_UPDATED=$(echo $BEST_GAME | sed 's/ //')
    echo "Welcome back, $USERNAME_UPDATED! You have played $PLAYED_UPDATED games, and your best game took $BEST_GAME_UPDATED guesses."
    GAME
  elif [[ $THE_USER -eq 0 ]];
  then
    echo "Welcome, $USERNAME_UPDATED! It looks like this is your first time here."
    GAME
  fi
}

ENTER_USERNAME(){
  echo "Enter your username:"
  read USERNAME
  USERNAME_UPDATED=$(echo $USERNAME | sed 's/ //')
  THE_USER=$($PSQL "SELECT COUNT(*) FROM users WHERE username='$USERNAME'")
  USER_GREETING
}

ENTER_USERNAME
