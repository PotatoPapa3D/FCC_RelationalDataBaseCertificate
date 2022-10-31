#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
 if [[ $WINNER != winner ]]
 then
 # get team_id
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
 # if not found
  if [[ -z $TEAM_ID ]]
  then
 # insert name
  INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
  if [[ $INSERT_TEAM_NAME == "INSERT 0 1" ]]
  then
    echo "Inserted into name, $WINNER"
  fi
  # get new team_id
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  fi
 fi

 if [[ $OPPONENT != opponent ]]
 then
 # get team_id
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
 # if not found
  if [[ -z $TEAM_ID ]]
  then
 #insert name
  INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
  if [[ $INSERT_TEAM_NAME == "INSERT 0 1" ]]
  then
   echo "Inserted into name, $OPPONENT"
  fi
  OTEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  fi
 fi

 if [[ $YEAR != year ]]
 then
 # get winner_id and opponent_id
  WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
 # insert student
  INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WIN_ID, $OPP_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  if [[ $INSERT_GAME == "INSERT 0 1" ]]
  then
   echo "Inserted into games, $YEAR, $ROUND, $WIN_ID, $OPP_ID, $MAJOR_ID, $WINNER_GOALS, $OPPONENT_GOALS"
  fi
 fi
done
