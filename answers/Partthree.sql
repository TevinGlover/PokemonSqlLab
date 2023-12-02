--Question 1

SELECT pokemons.name, types.name
FROM pokemons
LEFT JOIN types
ON pokemons.primary_type = types.id;
-- Question 2 -- Gowire helped
SELECT pokemons.name, types.name FROM pokemons LEFT JOIN types ON pokemons.secondary_type = types.id Where pokemons.name
= 'Rufflet';
-- Question 3trainerID303
SELECT pokemons.id , pokemon_trainer.pokemon_id, pokemons.name  FROM pokemon_trainer LEFT JOIN pokemons  ON pokemons.id =
 pokemon_trainer.pokemon_id WHere pokemon_trainer.trainerID = 303 ;
-- Question 4
mysql> SELECT  pokemons.name  FROM pokemons LEFT JOIN types  ON pokemons.secondary_type = types.id WHERE types.id = 7 ;
--- question5
SELECT  pokemons.primary_type,Types.id FROM pokemons LEFT JOIN types  ON pokemons.primary_type = types.id ;
--Question 6
