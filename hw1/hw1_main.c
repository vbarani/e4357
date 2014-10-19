/*
 * File: hw1_main.c
 * gcc -c hw1_main.c -o main.o
 * gcc main.o hw1_lib.o -o hw1
 */
#include "hw1_lib.h"

int main(int argc, char* argv[])
{
   // declaring the variables.
int dimension;
int *row_ptr;
int *column_ptr;
int row;
int column;
int ** matrix;
int correct_input;
int i;
int j;
int old_row;
int old_column;

// getting the dimension from user .
// Making sure the user enters a odd number.

correct_input=0;
while(!correct_input){
  printf ("\n");
  printf(" Enter a odd  dimension n . A magic square n*n will be created: ");
  scanf(" %d",&dimension);
  correct_input = ((dimension % 2)==0)? 0:1;
}

// creating a 2D matrix using pointers
column_ptr = (int*) malloc((dimension * dimension)*sizeof(int));
matrix =  (int **) malloc (dimension *sizeof(int*));

for (i=0;i<dimension ; i++) {
  matrix[i] = &column_ptr[i*dimension];
}


// initializing the matrix
for (i=0; i<dimension; i++) {
  for (j=0;j<dimension; j++){
     matrix[i][j] = 0;
  }
}

// constructing the magig square
row =0;
column = dimension /2;
matrix[row][column]=1;
for (i =2; i<= (dimension* dimension); i++){
  old_row = row;
  old_column =column;

  row = row -1;
  if ( row <0) {
    row = dimension -1;
  }

  column = column +1;
  if (column == dimension ){
    column =0;
  }

  while (matrix[row][column] !=0){
    row = old_row+1;
    column = old_column;
    if (row == dimension){
       row = 0;
    }
  }

  matrix[row][column] = i;
}

// printing the final magic square.

printf("The MAGIC SQUARE is \n");

for (i=0; i<dimension; i++) {
 for (j=0;j<dimension; j++){
    printf( "%d  ",matrix[i][j]);
}
printf("\n");
}

// testing the magic square

if(!(test_row(matrix,dimension))){
 printf("ERROR : row sums are not the same \n");
 return 1;
}

if(! (test_column(matrix,dimension))){
 printf("ERROR : column sums are not the same \n");
 return 1;
}

if(!(test_diagonal(matrix,dimension))){
 printf("ERROR : diagonal sums are not the same \n");
 return 1;
}


   return 0;
}

