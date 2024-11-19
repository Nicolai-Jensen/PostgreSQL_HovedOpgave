UPDATE game_data
SET body = '{"gender": "female", "money": 150, "chips": 50, "volume": 75, "rewards": "none"}'
WHERE game_id = 1;

INSERT INTO game_data (user_id, game_id, body)
VALUES (2, 1, '{"gender": "male", "money": 10090, "chips": 50, "volume": 75, "rewards": "none"}');

SELECT * FROM GameData;