SELECT * FROM "GameData";

ALTER TABLE "GameData" 
    ALTER COLUMN "UserId" SET DEFAULT nextval('GameData_UserId_seq');





pg_restore -U postgres -h localhost -p 5432 -d hovedOpgaveDatabase "path_to_your_dump_file.dump"


pg_dump -U postgres -h localhost -p 5432 -d hovedOpgaveDatabase -F c -f "path_to_place\database_backup.dump"