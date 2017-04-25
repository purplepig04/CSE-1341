int rows = 5;
int cols = 5;
float squareSize = 100;
int moves = 2;

Square[][] board = new Square[rows][cols];


void setup() {
  size(500,500);
  background(141,222,217);
  for (int i =0; i<rows; i++) {
    for (int j =0; j<cols; j++) {
      board[i][j] = new Square(j*squareSize, i*squareSize, squareSize);
      board[i][j].drawSquare();
    }
  }
}

void draw () {

}