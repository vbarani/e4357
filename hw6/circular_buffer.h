#ifndef __CIRCULAR_BUFFER
#define __CIRCULAR_BUFFER

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
/* Implement a circularbuffer library with the following API interface */

/**< Circular Buffer Types */
typedef unsigned char INT8U;
typedef INT8U KeyType ;
typedef struct {  
    INT8U writePointer ; /**< write pointer */  
    INT8U readPointer ;  /**< read pointer */  
    INT8U size;         /**< size of circular buffer */
    INT8U mask;         /**< bit Mask of circular buffer size*/   
    KeyType keys[0xF];    /**< Element of ciruclar buffer */
} CircularBuffer ; 

inline int CircularBufferIsFull(CircularBuffer* que)
{ 
return (0x0F == (que->size & que->mask ));
}
inline int CircularBufferIsEmpty(CircularBuffer* que)
{
return (0== que->size);
 }
inline int CircularBufferEnque(CircularBuffer* que, KeyType k)
{ 

    if(CircularBufferIsFull(que)){
    return -1;
    } else {
      que->keys[que->writePointer] = k;
      que->writePointer = que->writePointer +1;
      que->writePointer & 0x0F;
      ++que->size;
    }
    
}


inline int CircularBufferDeque(CircularBuffer* que, KeyType* pK)
{ 
    char c;
    
    if(CircularBufferIsEmpty(que)){
      return -1;
    }else {
     c   = que->keys[que->readPointer];
     que->readPointer = que->readPointer - 1;
     --que->size;
     return (c);
    }
}

inline int CircularBufferPrint(CircularBuffer* que)
{  
  int i;
  for (i=0; i< que->size ; i++){
    printf (" The element is %c\n",que->keys[i]); 
  }

}

void CircularInit (CircularBuffer *que)
{
    memset (que, 0, sizeof (que));
    que -> mask = 0x0F;
}

#endif
