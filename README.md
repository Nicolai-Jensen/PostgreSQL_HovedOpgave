Here are the following steps to get the database up and running:

Things you need in order for this to work
- PostgreSQL
  - be sure your windows path for Postgres tool is set
  - https://www.commandprompt.com/education/how-to-set-windows-path-for-postgres-tools/#:~:text=To%20set%20Windows%20PATH%20for%20PostgreSQL%20tools%2C%20firstly%2C%20open%20System,button%20to%20save%20all%20the
- Docker Desktop

<h4>How To</h4>

- Download Git reppository
- Open folder with Visual studio Code or not, just easier
- Run the following commands:
    - docker build -t game_data . <h4>or</h4> docker build -t "NameOfImage" .
    - docker run -d --network app-network -p 5431:5432 --name TestDB game_data <h4>or</h4> docker run -d --network "NameOfInternetBirdge" -p 5431:5432 --name "NameOfContainer" "NameOfImage"
    - If you dont have a network set up look at the buttom of the ReadMe

- Now you have a container up and running heres how to get the database content
    - pg_restore -U postgres -d game_data -h localhost -p 5431 new_database_backup.dump

after pg_restore has ben run you should be left with this

 <pre>
    {
        "userId": "3",
        "gameId": "1",
        "body": "{\"Chips\": 141, \"Money\": 328, \"Gender\": \"female\", \"SFXVolume\": -79, \"MusicVolume\": -50, \"RewardNames\": null, \"MasterVolume\": -42}"
    },
    {
        "userId": "2",
        "gameId": "1",
        "body": "{\"Chips\": 418, \"Money\": 203, \"Gender\": \"female\", \"SFXVolume\": -35, \"MusicVolume\": -73, \"RewardNames\": null, \"MasterVolume\": -60}"
    },
    {
        "userId": "0",
        "gameId": "2",
        "body": "{\"Chips\": 329, \"Money\": 44, \"Gender\": \"female\", \"SFXVolume\": -21, \"MusicVolume\": -37, \"RewardNames\": null, \"MasterVolume\": -26}"
    },
    {
        "userId": "1",
        "gameId": "2",
        "body": "{\"Chips\": 389, \"Money\": 332, \"Gender\": \"female\", \"SFXVolume\": -25, \"MusicVolume\": -41, \"RewardNames\": null, \"MasterVolume\": -56}"
    },
    {
        "userId": "7",
        "gameId": "2",
        "body": "{\"Chips\": 190, \"Money\": 258, \"Gender\": \"female\", \"SFXVolume\": -76, \"MusicVolume\": 8, \"RewardNames\": null, \"MasterVolume\": -56}"
    },
    {
        "userId": "9",
        "gameId": "2",
        "body": "{\"Chips\": 166, \"Money\": 303, \"Gender\": \"female\", \"SFXVolume\": -54, \"MusicVolume\": -15, \"RewardNames\": null, \"MasterVolume\": -30}"
    },
    {
        "userId": "4",
        "gameId": "2",
        "body": "{\"Chips\": 312, \"Money\": 142, \"Gender\": \"female\", \"SFXVolume\": -58, \"MusicVolume\": -44, \"RewardNames\": null, \"MasterVolume\": 15}"
    },
    {
        "userId": "5",
        "gameId": "1",
        "body": "{\"Chips\": 109, \"Money\": 311, \"Gender\": \"female\", \"SFXVolume\": -61, \"MusicVolume\": 10, \"RewardNames\": null, \"MasterVolume\": 7}"
    },
    {
        "userId": "6",
        "gameId": "2",
        "body": "{\"Chips\": 181, \"Money\": 173, \"Gender\": \"female\", \"SFXVolume\": -46, \"MusicVolume\": -69, \"RewardNames\": null, \"MasterVolume\": 17}"
    },
    {
        "userId": "8",
        "gameId": "2",
        "body": "{\"Chips\": 459, \"Money\": 422, \"Gender\": \"female\", \"SFXVolume\": -10, \"MusicVolume\": -54, \"RewardNames\": null, \"MasterVolume\": -28}"
    }
    
    </pre>


- To make the dumpfile 
    - docker exec -it TestDB pg_dump -U postgres -F c -d game_data -f /tmp/new_database_backup.dump
    - docker cp TestDB:/tmp/new_database_backup.dump .
      
Command to set up a new network bridge in docker
- docker network create -d bridge "network_name"
