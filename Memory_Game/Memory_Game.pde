/*Samantha Garza
CSE-1341
Memory Game

An extension of a program by Donya Quick:
https://smu.instructure.com/courses/32688/files/679138/download?download_frd=1 
*/
int rows = 4;
int cols = 4;
float squareSize =100;

Square[][] board = new Square[rows][cols];

void setup() {
   size(400,400);
  for (int i=0; i<rows; i++) {
    // for each column
    for (int j = 0; j<cols; j++) {
      // build a square
      //rect(j*squareSize, i*squareSize, squareSize, squareSize);
      board[i][j] = new Square(j*squareSize, i*squareSize, squareSize);
      board[i][j].drawSquare();
    }
  }
}
void draw() {
  for (int i =0; i<rows; i++) {
   for (int j = 0; j<cols; j++) {
      board[i][j].drawSquare();
    }
  }
}

void mousePressed () {
 for (int i=0; i<rows; i++) {
    // for each column
    for (int j = 0; j<cols; j++) {
      // is the mouse over this particular square?
      if (board[i][j].overSquare(mouseX, mouseY) ) {
        // yes - press it to change the state!
        board[i][j].press();
      }
    }
  }
}