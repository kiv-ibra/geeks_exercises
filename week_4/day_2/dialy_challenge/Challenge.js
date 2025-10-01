
const gameInfo = [
 {
   username: "john",
   team: "red",
   score: 5,
   items: ["ball", "book", "pen"]
 },
 {
   username: "becky",
   team: "blue",
   score: 10,
   items: ["tape", "backpack", "pen"]
 },
 {
   username: "susy",
   team: "red",
   score: 55,
   items: ["ball", "eraser", "pen"]
 },
 {
   username: "tyson",
   team: "green",
   score: 1,
   items: ["book", "pen"]
 },
];

const usernames = [];
gameInfo.forEach(player => usernames.push(player.username + '!'));

console.log(usernames); 
// Output: ["john!", "becky!", "susy!", "tyson!"]

const winners = [];
gameInfo.forEach(player => {
  if (player.score > 5) {
    winners.push(player.username);
  }
});

console.log(winners); 
// Output: ["becky", "susy"]

const totalScore = gameInfo.reduce((sum, player) => sum + player.score, 0);

console.log(`Le score total est de : ${totalScore}`); 
// Output: "Le score total est de : 71"
 