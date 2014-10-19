/* 
 * File: hw1_lib.c
 * gcc -c hw1_lib.c -o hw1_lib.o
 * gcc -S hw1_lib.c -o hw1_lib.s
 * objdump -D hw1_lib.o
 */
#include "hw1_lib.h"

// Function test_rows checks each rows to make sure the sum is the same.
// Returns 1 if test passes returns 0 if test fails.
int test_row ( int **a , int dimension) {
 int square ;
 int total_sum;
 int expected_row_sum;
 int row_sum;
 int i;
 int j;

  square = dimension * dimension;
  total_sum = (square* (square+1))/2 ;
  expected_row_sum = total_sum/dimension;

 for (i=0;i<dimension; i++){
   row_sum=0;
   for(j=0;j<dimension; j++){
     row_sum = a[i][j] + row_sum;
   }
   if(row_sum != expected_row_sum){
   return 0;
   }
 }
  return 1;
}

// Function test_column checks each column to make sure the sum is the same.
// Returns 1 if test passes returns 0 if test fails.
int test_column ( int **a , int dimension) {
 int square ;
 int total_sum;
 int expected_column_sum;
 int column_sum;
 int i;
 int j;

  square = dimension * dimension;
  total_sum = (square* (square+1))/2 ;
  expected_column_sum = total_sum/dimension;

 for (i=0;i<dimension; i++){
   column_sum=0;
   for(j=0;j<dimension; j++){
     column_sum = a[j][i] + column_sum;
   }
   if(column_sum != expected_column_sum){
   return 0;
   }
 }
  return 1;
}

// Function test_diagonal checks each diagonal to make sure the sum is the same.
// Returns 1 if test passes returns 0 if test fails.


int test_diagonal ( int **a , int dimension) {
 int square ;
 int total_sum;
 int expected_diagonal_sum;
 int diagonal_sum;
 int i;
 int j;

  square = dimension * dimension;
  total_sum = (square* (square+1))/2 ;
  expected_diagonal_sum = total_sum/dimension;

 // checking left to right diagonal
   diagonal_sum=0;
   for(j=0;j<dimension; j++){
     diagonal_sum = a[j][j] + diagonal_sum;
   }
   if(diagonal_sum != expected_diagonal_sum){
   return 0;
   }

 // checking right to left diagonal
   diagonal_sum =0;
   j=dimension -1;
   i =0;
   for(j = dimension -1; j>=0 ; j--){
     diagonal_sum = a[i][j] + diagonal_sum;
     i = i +1;
   }
   if(diagonal_sum != expected_diagonal_sum){
   return 0;
   }


return 1;

}

