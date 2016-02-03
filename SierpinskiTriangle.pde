public void setup()
{
background(0,0,0);
size (400,400);
}
int myX;
int myY;
int myLen;
public void draw()
{
background(0,0,0);
sierpinski(0,400,400);
//triangle((float)myX,(float)myY,(float)myX+myLen,(float)myY,(float)myX+myLen/2,(float)myY-myLen);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
myX=x;
myY=y;
myLen=len;
//x=195;
//y=200;
//len=200;	
if (len>20){
	sierpinski(x,y,len/2);
	sierpinski(x+len/2,y,len/2);
	sierpinski(x+len/4,y-len/2,len/2);
}
//if (len == 0||x==0||y==0 ){
//	triangle(x,y,x+len,y,x+len/2,y-len);
//	System.out.println(myX);

//}
else
{
//x=195;
//y=200;
//len=200;	
	triangle(x,y,x+len,y,x+len/2,y-len);
}
}
/*  * If `len` is greater than 20 (or some variable) 
        * recursively call the `sierpinksi` function to draw a triangle with the left corner at (`x`,`y`) and a base and height equal to `len/2`.
        * Again, call the `sierpinksi` function a second time to draw another triangle a distance of `len/2` to the right of the first triangle.
        * Now, call the `sierpinksi` function a third time to draw a triangle a distance of `len/4` to the right and `len/2` up from the first triangle. This triangle should "sit on top" of the first two.
    * else
        * Draw a triangle with the left corner at (`x`,`y`) and a base and height equal to `len`.
3. Once you have the `sierpinksi` function completed, call it once in `draw()` to start the process. You can change the number and size of the triangles by changing the limit in the `if` from 20 to some variable and adjusting the value of the variable. One way to make the program interactive is to use `mouseDragged` to change the limit.*/