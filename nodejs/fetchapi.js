import fetch from "node-fetch";

let url = "http://127.0.0.1:3000/api/v1/users";

let post = { sender_id: 2, content: "apifetching" };
let user = {
  username: "fetched",
  email: "fetched@test.com",
  password: "fetch123",
};
let settings = {
  method: "POST",
  body: JSON.stringify(user),
  headers: { "Content-Type": "application/json" },
};

fetch(url, settings)
  .then((res) => res.json())
  .then((json) => {
    console.log(json);
  });
