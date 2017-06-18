/*
 * test.c
 *  
 * A simple C library to include in your Ultibo project
 *  
 */
 
#include <stdio.h>
void write_to_file( unsigned Count,char *cptr) 
{
	int i,flg;
	short int seed;
	char ch,*lcptr;
	flg=0;
	seed=0;
	lcptr = cptr;
	
        printf("%d 0x%x 0x%x \n",Count,cptr,lcptr);
        for(i=0;i<Count;i++) {
			ch = *lcptr++;
			printf("%c ",ch);
			//Check for $ which is at position 1
			if(i==2) flg = 1;
			//Check for * which is at position Count-6
			if(i==Count-6) 
			{
				flg = 0;
				seed=seed^ch;
			}
			
			if(flg) seed=seed^ch;
                       
		}
        printf("%x\n",seed);
}

void test (unsigned cc,char *cptr)
{
  
   //printf ("Hello Ultibo from C!!\n");
    write_to_file(cc,cptr);
}
