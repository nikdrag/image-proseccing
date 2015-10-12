% This function calculates the chain code of the given contour.The 
% input arguments of this function are:
% L: matrix containing labels for the connected components in BW
% contour: number of the each contour
% r,c: the coordinates of the contour

function chain=chain_code(L,contour,r,c)

pixels=[r,c];   %insert in one matrix all the coordinates
num_pixels=length(pixels);  %finds the length of the pixels
x=pixels(1,1);  %set the beginning coordinates
y=pixels(1,2);

L(x,y)=contour+1; %set these coordinates as marked

n=1;  %initialize the variable

while n<=num_pixels %loop for all the pixels of the each contour  
    if (L(x+1,y)==contour)  %checkes if these coordinates belongs to  
          L(x+1,y)=contour+1;   %the contour and marks them
          chain(n)=0;   %specifies the direction
          x=x+1;    %increases the x coordinate
    elseif (L(x+1,y-1)==contour)    %checkes if these coordinates belongs to
          L(x+1,y-1)=contour+1; %the contour and marks them
          chain(n)=1;   %specifies the direction
          x=x+1;    %increases the x coordinate
          y=y-1;    %declines the y coordinate
    elseif (L(x,y-1)==contour)  %checkes if these coordinates belongs to
          L(x,y-1)=contour+1;   %the contour and marks them
          chain(n)=2;   %specifies the direction
          y=y-1;    %declines the y coordinate
    elseif (L(x-1,y-1)==contour)   %checkes if these coordinates belongs to
          L(x-1,y-1)=contour+1; %the contour and marks them
          chain(n)=3;   %specifies the direction
          x=x-1;    %declines the x coordinate
          y=y-1;    %declines the y coordinate
    elseif (L(x-1,y)==contour)  %checkes if these coordinates belongs to
          L(x-1,y)=contour+1;   %the contour and marks them
          chain(n)=4;   %specifies the direction
          x=x-1;    %declines the x coordinate
    elseif (L(x-1,y+1)==contour)    %checkes if these coordinates belongs to
          L(x-1,y+1)=contour+1; %the contour and marks them
          chain(n)=5;   %specifies the direction
          x=x-1;    %declines the x coordinate
          y=y+1;    %increases the y coordinate
    elseif (L(x,y+1)==contour)  %checkes if these coordinates belongs to
          L(x,y+1)=contour+1;   %the contour and marks them
          chain(n)=6;   %specifies the direction
          y=y+1;    %increases the y coordinate
    elseif (L(x+1,y+1)==contour)    %checkes if these coordinates belongs to
          L(x+1,y+1)=contour+1; %the contour and marks them
          chain(n)=7;   %specifies the direction
          x=x+1;    %increases the x coordinate
          y=y+1;    %increases the y coordinate
    end

    n=n+1;  %increases the n variable  
    
end



      