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
--- question5-What are all the primary types and how many pokemon have that type?
SELECT  t.name AS primary_type_name, COUNT(*)
FROM types AS t
LEFT JOIN pokemons AS p
ON t.id = p.primary_type
JOIN pokemon_trainer AS pt
ON p.id = pt.pokemon_id
GROUP BY t.name;
--Question 6 -How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(pokemon_trainer.trainerID)
FROM pokemons
 JOIN  pokemon_trainer
ON pokemons.id = pokemon_trainer.pokemon_id
WHERE pokemon_trainer.pokelevel = 100
GROUP BY pokemon_trainer.trainerID;
--Question-- How many pokemon only belong to one trainer and no other?