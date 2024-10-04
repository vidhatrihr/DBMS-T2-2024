SELECT
  *
FROM
  teams;

SELECT
  tram_id
from
  players
WHERE
  dob < 2000 -01 - 01;

SELECT
  team_id
from
  players
WHERE
  dob < 2004 -01 -01;

select
  team_id
from
  players
WHERE
  dob < '2005-01-01';

SELECT
  city,
  playground
from
  teams
WHERE
  jersey_away_color = pink;

SELECT
  city,
  ?
FROM
  playground
from
  teams
WHERE
  jersey_away_color = 'pink';

select
  city,
  playground
FROM
  teams
where
  jersey_away_color = 'pink';

SELECT
  city,
  playground
from
  teams
WHERE
  jersey_away_color = 'blue';

SELECT
  names
from
  teams
where
  name = 'All Stars';

SELECT
  team_id
from
  teams
WHERE
  name = ' All Stars';

SELECT
  team_id
from
  teams
WHERE
  name = 'All Stars';

SELECT
  name
FROM
  players
WHERE
  team_id = 'T0005';

select
  players.name
from
  teams,
  players
WHERE
  teams.name = 'All Stars'
  and players.team_id = teams.team_id;

select
  *
FROM
  managers;

SELECT
  *
FROM
  managers
WHERE
  since > '2020-01-01';

SELECT
  *
FROM
  managers
WHERE
  dob > '1990-01-01'
  AND since > '2020-01-01';

SELECT
  name
FROM
  managers
ORDER BY
  since DESC
LIMIT
  1;

SELECT DISTINCT
  team_id
FROM
  players
ORDER BY
  team_id;

SELECT
  count(DISTINCT team_id)
FROM
  players;

SELECT
  team_id,
  count(team_id)
FROM
  players
GROUP BY
  team_id
HAVING
  count(team_id) > 11;

SELECT
  team_id,
  count(team_id) as how_many_A_people
FROM
  players
WHERE
  name like 'A%'
GROUP BY
  team_id
ORDER BY
  count(team_id),
  team_id;

SELECT
  *
FROM
  players
WHERE
  name like 'A%'
intersect
SELECT
  *
FROM
  players
WHERE
  dob >= '2003-01-01';

SELECT
  name
FROM
  players;

select
  jersey_no
from
  players
ORDER BY
  dob DESC
LIMIT
  1;

select
  name,
  team_id
from
  players;

select
  team_id,
  name,
  city
from
  teams;

select
  players.name,
  players.team_id,
  teams.name as team_name,
  city
from
  players,
  teams
where
  players.team_id = teams.team_id;

select
  city,
  count(city)
from
  players,
  teams
where
  players.team_id = teams.team_id
GROUP BY
  city;

-- Write a SQL statement to find the name of the manager of the team: 'All Stars'.[Database: FLIS] flisdb:
select
  team_id
from
  teams
where
  name = 'All Stars';

select
  name
from
  managers
where
  team_id = 'T0005';

select
  managers.name
from
  managers,
  teams
where
  teams.name = 'All Stars'
  and teams.team_id = managers.team_id;

-- Write an SQL statement to find the names of all teams.
select
  name
from
  teams;

--Write an SQL statement to find the team_id of the players who were born before the year '2003'
select
  team_id
from
  players
where
  dob < '2003-01-01';

--Write an SQL statement to find the city and playground of the teams whose away-jersey color(jersey_away_color) is 'Pink'.
select
  city,
  playground
from
  teams
where
  jersey_away_color = 'Pink';

--Write an SQL statement to find the names of players of the team: 'All Stars'
select
  players.name
from
  players,
  teams
where
  players.team_id = teams.team_id
  and teams.name = 'All Stars';

select
  match_num,
  (
    select
      name
    from
      referees
    where
      referee_id = assistant_referee_1
  )
from
  matches
  natural inner join match_referees
where
  match_date = '2020-05-15';

--practice sql my way--
-- practice cross join--
select
  *
from
  players
  cross join matches;

select
  player_id,
  teams.name
from
  players,
  teams
  cross join referees;

select
  match_num,
  match_date,
  teams.name
from
  matches,
  teams
  cross join players;

-- inner join--
select
  *
from
  players
  inner join matches on 1 = 1;

select
  *
from
  players
  inner join teams on players.team_id = teams.team_id;

create view
  played as
select
  teams.name,
  match_num
from
  teams,
  matches
order by
  teams.name;

select
  *
from
  played;

-- Listing all --