SELECT * FROM "GameData";

ALTER TABLE "GameData" 
    ALTER COLUMN "UserId" SET DEFAULT nextval('GameData_UserId_seq');