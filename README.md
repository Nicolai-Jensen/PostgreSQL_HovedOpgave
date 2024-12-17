Here are the following steps to get the database up and running:

- Download Git reppository
- Open folder with VSC or not just easier
- Run the following commands:
    - docker build -t game_data . || docker build -t "NameOfImage" .
    - docker run -d --network app-network -p 5431:5432 --name TestDB game_data || docker run -d --network "NameOfInternetBirdge" -p 5431:5432 --name "NameOfContainer" "NameOfImage"

- Now you have a container up and running heres how to get the database content
    - pg_restore -U postgres -d game_data -h localhost -p 5431 new_database_backup.dump

- To make the dumpfile 
    - docker exec -it TestDB pg_dump -U postgres -F c -d game_data -f /tmp/new_database_backup.dump
    - docker cp TestDB:/tmp/new_database_backup.dump .
      
Command to set up a new network bridge in docker
- docker network create -d bridge "network_name"
