const db = require("../dbConfig/connect");

class User {
  constructor(data) {
    this.id = data.id;
    this.username = data.username;
    this.password = data.password;
  }

  static getOneByUsername(username) {
    return new Promise(async (resolve, reject) => {
      try {
        const userData = await db.query(
          `SELECT * FROM user_account WHERE username = $1;`,
          [username]
        );
        console.log(userData.rows[0]);
        const user = new User(userData.rows[0]);
        resolve(user);
      } catch (err) {
        console.log(err);
        reject("Unable to locate user.");
      }
    });
  }

  static registerUser(username, hash) {
    return new Promise(async (resolve, reject) => {
      const user = await db.query(
        "SELECT * FROM user_account WHERE username = $1",
        [username]
      );

      if (typeof user.rows[0] == "undefined") {
        try {
          const userData = await db.query(
            "INSERT INTO user_account (username, password) VALUES ($1, $2) RETURNING *;",
            [username, hash]
          );
          const newUser = new User(userData.rows[0]);
          resolve(newUser);
        } catch (err) {
          reject("User could not be created");
        }
      } else {
        resolve("User already exists!");
      }
    });
  }
}

module.exports = User;
