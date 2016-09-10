var powerPelletEaten = false;
var ghosts = 4;

while (true) {
  console.log('Ghosts remaining:' + ghosts);

    if (powerPelletEaten == false) {
      console.log('Pacman eats the power pellet.');
      powerPelletEaten == true;

    } else if (ghosts > 0) {
      console.log('Pacman eats a ghost');
      ghosts --;
    } else {
      break;
    }
}

console.log('Pacman returns home after a long day in the maze');
