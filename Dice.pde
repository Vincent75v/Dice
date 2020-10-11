void setup()
  {
    size(550,550);
      noLoop();
     
  }
  void draw()
  {
    int total= 0;
    background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      for (int y=20; y<450; y= y+80)
      {
        for (int x =20; x<450; x=x+80)
        {
          Die one = new Die(x,y);
           one.roll();
          one.show();
         total = total + one.dotNum;
         
        }
      }
       text("Total:"+total, 175, 530);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int dice,myX, myY,total,dotNum,r,g,b,rr,gg,bb,rrr,ggg,bbb;
      Die(int x, int y) //constructor
      {
        myX = x;
        myY = y;

        
          //variable initializations here
      }
      void roll()
      {
         r = (int)(Math.random()*255);
         g = (int)(Math.random()*255);
         b = (int)(Math.random()*255);
         rr = (int)(Math.random()*255);
         gg = (int)(Math.random()*255);
         bb = (int)(Math.random()*255);
         rrr = (int)(Math.random()*255);
         ggg = (int)(Math.random()*255);
         bbb = (int)(Math.random()*255);

      dotNum=(int)(Math.random()*6 )+1;
      }
      void show()
      {
        fill(rrr,ggg,bbb);
        rect(myX,myY, 50,50, 15);
          if (dotNum == 1)
          {
            fill(r,g,b);
            ellipse(myX+25, myY+25, 10,10);
      }
      else if (dotNum==2)
    {
       fill(r,g,b);
      ellipse(myX+15, myY+25, 10, 10);
       fill(rr,gg,bb);
      ellipse(myX+35, myY+25, 10, 10);
    }
    else if (dotNum==3)
    {
      fill(r,g,b);
      ellipse(myX+10, myY+25, 10, 10);
       fill(rr,gg,bb);
      ellipse(myX+25, myY+25, 10, 10);
       fill(r,g,b);
      ellipse(myX+40, myY+25, 10, 10);
    } 
    else if (dotNum==4)
    {
      fill(r,g,b);
      ellipse(myX+10, myY+10, 10, 10);
       fill(rr,gg,bb);
      ellipse(myX+40, myY+10, 10, 10);
       fill(r,g,b);
      ellipse(myX+10, myY+40, 10, 10);
       fill(rr,gg,bb);
      ellipse(myX+40, myY+40, 10, 10);
    } 
    else if (dotNum==5)
    {
      fill(r,g,b);
      ellipse(myX+10, myY+10, 10, 10);
       fill(rr,gg,bb);
      ellipse(myX+40, myY+10, 10, 10);
       fill(r,g,b);
      ellipse(myX+10, myY+40, 10, 10);
       fill(rr,gg,bb);
      ellipse(myX+40, myY+40, 10, 10);
      fill(r,g,b);
      ellipse(myX+25, myY+25, 10, 10);
    } 
    else if (dotNum==6)
    {
      fill(r,g,b);
      ellipse(myX+10, myY+10, 10, 10);
       fill(rr,gg,bb);
      ellipse(myX+40, myY+10, 10, 10);
       fill(r,g,b);
      ellipse(myX+10, myY+40, 10, 10);
       fill(rr,gg,bb);
      ellipse(myX+40, myY+40, 10, 10);
       fill(r,g,b);
      ellipse(myX+10, myY+25, 10, 10);
       fill(rr,gg,bb);
      ellipse(myX+40, myY+25, 10, 10);
    }
  

    
   
    textSize(30);
   
    

  
}
  }
