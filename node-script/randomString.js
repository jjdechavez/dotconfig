const crypto = require("node:crypto");

function randomString(length) {
  return crypto.randomBytes(+length).toString("hex");
}

const argLength = process.argv[2] ?? 8;
const result = randomString(argLength);

console.log(result);
