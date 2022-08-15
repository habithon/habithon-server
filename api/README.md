# Lap 2 assignment
-**DB**
  - tables: 
      - users: 
        |id |email|password|dateJoined|lastactive|fullName|username|
        |---|-----|--------|----------|----------|---|---|
        |1  |e@g.c|23fsg243|1231231231|1414141414|John Doe|jon123456|
      - streaks
        |id |userid|habit|streak|frequency|lastCompleted|
        |---|------|-------|------|-------|---|
        |1  |233   |water    |2   | monthly        |12-08-2022|
       
  - interactions: 
  - deploy DB to heroku ,
  - deploy API to heroku - dbConfig.js connects to DB, https://api-habithon.heroku.app/user/41,
  - deploy client on Netlify

  ## ideas: 
  When a user logs in re-calculate the streaks straight away.


`root dir = http://localhost:3000`
  |PATH|METHOD|object structure| comment |
  |---|---|---|---|
  |`/user/:id`|`GET`|`body{"date"}, res:{"user": {"id":45, "fullName":"John Doe", "habits": {"water": {"streak": 5, "frequency":"monthly"}}}}`|N/A|
  |`/new`|`POST`|`body: {"habit": "drink water", "userId": 34, "loggedIn": true}`, `response: {"created": true}` |N/A|
  |`/completed`|`POST`|`body: {"habit": "drink water", "userId": 34, "loggedIn": true, "dateClicked": "12-03-2022"}`, `res: {"created": true}` |N/A|

