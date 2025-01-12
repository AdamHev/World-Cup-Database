#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# echo $($PSQL "TRUNCATE teams")
echo $($PSQL "TRUNCATE games")
# Read, skip the first line
tail -n +2 games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # Get TEAM_ID for the WINNER
  TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
  
  # If TEAM_ID not found
  if [[ -z $TEAM_ID ]]
  then
    # Insert the WINNER into the teams table
    INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
    if [[ $INSERT_TEAM_NAME == "INSERT 0 1" ]]
    then
      echo "Inserted into teams, $WINNER"
    fi
    # Retrieve the new TEAM_ID
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
  fi

  # OPPONENT
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")

  if [[ -z $OPPONENT_ID ]]
  then
    # Insert the OPPONENT into the teams table
    INSERT_OPPONENT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
    if [[ $INSERT_OPPONENT_NAME == "INSERT 0 1" ]]
    then
      echo "Inserted into teams, $OPPONENT"
    fi
    # Retrieve the new OPPONENT_ID
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
  fi

  # Insert the game into the games table
  INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
                       VALUES('$YEAR', '$ROUND', '$TEAM_ID', '$OPPONENT_ID', '$WINNER_GOALS', '$OPPONENT_GOALS');")

  if [[ $INSERT_GAME == "INSERT 0 1" ]]
  then
    echo "Inserted game: $YEAR $ROUND - $WINNER vs $OPPONENT"
  fi
done
