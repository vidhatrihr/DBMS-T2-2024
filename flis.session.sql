select
  *
from
  players;

SELECT
  name,
  dob
from
  players;

SELECT DISTINCT
  team_id
from
  players;

SELECT
  count(*)
from
  players;

SELECT
  count(team_id)
from
  players;

select
  count(DISTINCT team_id)
from
  players;

SELECT
  name as player_name,
  dob
FROM
  players;

SELECT
  name player_name
from
  players;

SELECT
  *
FROM
  players
where
  dob > '2003-01-01'
ORDER BY
  dob;

SELECT
  count(name) freq_name,
  count(DISTINCT team_id) freq_team
from
  players
where
  team_id != 'T0001';

SELECT
  name,
  team_id
FROM
  players
where
  team_id = 'T0002'
  or team_id = 'T0001';

SELECT
  name,
  team_id
From
  players
WHERE
  team_id in ('T0001', 'T0002');

SELECT
  name,
  dob
from
  players
WHERE
  dob BETWEEN '2000-01-01' and '2003-01-01'
ORDER BY
  name DESC;

SELECT
  name
FROM
  players
where
  name like '%n_';

SELECT
  NAME,
  team_id
FROM
  players
where
  name like 'J%'
  and team_id = 'T0005';

SELECT
  name,
  dob
FROM
  players
ORDER BY
  dob
LIMIT
  1;

SELECT
  count(name),
  team_id
FROM
  players
GROUP BY
  team_id;

SELECT
  host_team_score,
  count(host_team_id)
FROM
  matches
GROUP BY
  host_team_score
HAVING
  COunt(host_team_score) > 3;

SELECT
  host_team_score * 100 as final_score,
  count(host_team_score) as how_many
FROM
  matches
where
  host_team_id != 'T0001'
  and guest_team_id != 'T0001'
GROUP BY
  host_team_score
HAVING
  count(host_team_score) >= 3
ORDER BY
  host_team_score DESC
LIMIT
  1;

SELECT
  name,
  team_id
from
  players
WHERE
  team_id = 'T0001'
UNION
SELECT
  name,
  team_id
FROM
  players
WHERE
  team_id = 'T0002'
ORDER BY
  team_id DESC,
  name DESC;

select
  *
FROM
  players
where
  name like 'J%'
except
SELECT
  *
FROM
  players
where
  dob >= '2004-01-01';

select
  team_id
from
  managers;

select
  team_id
from
  teams
where
  name = 'All Stars';

select
  managers.name
from
  managers,
  teams
where
  managers.team_id = teams.team_id
  and teams.name = 'All Stars';

select
  managers.name
from
  teams,
  managers
where
  teams.team_id = managers.team_id
  AND teams.name = 'All Stars';

select
  name
from
  teams;

select
  team_id
from
  players
where
  dob < ' 2003-01-01';

select
  city,
  playground
from
  teams
where
  jersey_away_color = 'Pink';

select
  name,
  dob
from
  managers
where
  since BETWEEN '2019-01-01' and '2020-12-31';

select
  *
from
  managers
where
  since BETWEEN '2019-01-01' and '2020-12-31';

select
  name
from
  teams
where
  city = 'London';

select
  player_id
from
  players
where
  name like 'K%';

select
  match_num
from
  matches
where
  guest_team_id = 'T0002'
  and host_team_id = 'T0004';

select
  managers.name
from
  teams,
  managers
where
  managers.team_id = teams.team_id
  and teams.name = 'Arawali';

select
  teams.team_id,
  count(players.player_id)
from
  teams,
  players
where
  teams.team_id = players.player_id;

select
  team_id,
  count(*)
from
  players
GROUP BY
  team_id;

select
  players.name,
  jersey_no,
  managers.name
from
  managers
  inner join players using (team_id)
where
  jersey_no in (14, 16);

select
  players.name,
  players.dob,
  teams.name,
  managers.name
from
  managers
  inner join players using (team_id)
  inner join teams using (team_id)
where
  jersey_no = 59;

select
  name
from
  teams
where
  name like '_% S%';

select
  managers.name
from
  managers
  inner join teams using (team_id)
where
  teams.name = 'All Stars';

select
  name
from
  teams;

select
  host_team_id,
  count(host_team_id)
from
  matches
GROUP BY
  host_team_id
HAVING
  count(host_team_id) > 3;

select
  host_team_id
from
  matches
union all
select
  guest_team_id
from
  matches;

select
  team_id,
  count(team_id)
from
  (
    select
      host_team_id as team_id
    from
      matches
    union all
    select
      guest_team_id
    from
      matches
  ) as temp
GROUP BY
  team_id
HAVING
  count(team_id) > 3;

select
  name
from
  players
where
  name like 'S%'
except
select
  name
from
  players
where
  name like '_%n';

select
  count(*)
from
  players
where
  team_id = 'T0001';

select
  managers.dob
from
  managers
  inner join players using (team_id)
where
  players.name = 'Shlok';

select
  match_num
from
  teams
  inner join matches on teams.team_id = matches.host_team_id
where
  playground = 'Emirates Stadium';

select
  players.name player_id,
  dob,
  city
from
  teams
  inner join players using (team_id)
where
  teams.name = 'Rainbow';

select
  name
from
  teams
where
  city in (
    select
      city
    from
      teams
    where
      name = 'Amigos'
  )
  and name != 'Amigos';