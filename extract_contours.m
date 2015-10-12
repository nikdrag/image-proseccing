% This function extracts all contours from an image and using separate functions 
% calculates their chain codes and differential chain codes.Depend on these
% results calculates the ration between the width and the height of each contour. 
% At the end categorizes the contours based on the differential chain codes
% and the ratios.The input arguments of this function are:
% str: image file
% method: edge detection method
% connectivity: 4 or 8

function extract_contours(str,method,connectivity)

I=imread(str);  %input of the image
if isrgb(I)
    I=rgb2gray(I);  %alteration of the image to gray one
end

BW=edge(I,method);  %extracting the contours of the image
L=bwlabel(BW,connectivity); %calculates the matrix which containes the labels for 
                            %the connected components in BW

count=max(max(L)); %calculate the number of contours

chain=0;   %initialize the variables/vectors

[xc,yc]=find(L==1); %find the coordinates which refer to 1st contour
chain_1=chain_code(L,1,xc,yc);    %calculates the chain code
[yppl_1,plyp_1]=rations(chain_1);  %calculates the width/height ratios
sprintf('Ο λογος υψους πλατους του περιγραμματος 1 ειναι %f και ο λογος πλατους υψους ειναι %f',yppl_1,plyp_1)
dfcode_1=dfchain_code(chain_1); %calculates the differential chain code


[xc,yc]=find(L==2); %find the coordinates which refer to 2nd contour
chain_2=chain_code(L,2,xc,yc);    %calculates the chain code
[yppl_2,plyp_2]=rations(chain_2);  %calculates the width/height ratios
sprintf('Ο λογος υψους πλατους του περιγραμματος 2 ειναι %f και ο λογος πλατους υψους ειναι %f',yppl_2,plyp_2)
dfcode_2=dfchain_code(chain_2); %calculates the differential chain code


[xc,yc]=find(L==3); %find the coordinates which refer to 3rd contour
chain_3=chain_code(L,3,xc,yc);    %calculates the chain code
[yppl_3,plyp_3]=rations(chain_3);  %calculates the width/height ratios
sprintf('Ο λογος υψους πλατους του περιγραμματος 3 ειναι %f και ο λογος πλατους υψους ειναι %f',yppl_3,plyp_3)
dfcode_3=dfchain_code(chain_3); %calculates the differential chain code


[xc,yc]=find(L==4); %find the coordinates which refer to 4th contour
chain_4=chain_code(L,4,xc,yc);    %calculates the chain code
[yppl_4,plyp_4]=rations(chain_4);  %calculates the width/height ratios
sprintf('Ο λογος υψους πλατους του περιγραμματος 4 ειναι %f και ο λογος πλατους υψους ειναι %f',yppl_4,plyp_4)
dfcode_4=dfchain_code(chain_4); %calculates the differential chain code


[xc,yc]=find(L==5); %find the coordinates which refer to 5th contour
chain_5=chain_code(L,5,xc,yc);    %calculates the chain code
[yppl_5,plyp_5]=rations(chain_5);  %calculates the width/height ratios
sprintf('Ο λογος υψους πλατους του περιγραμματος 5 ειναι %f και ο λογος πλατους υψους ειναι %f',yppl_5,plyp_5)
dfcode_5=dfchain_code(chain_5); %calculates the differential chain code


[xc,yc]=find(L==6); %find the coordinates which refer to 6th contour
chain_6=chain_code(L,6,xc,yc);    %calculates the chain code
[yppl_6,plyp_6]=rations(chain_6);  %calculates the width/height ratios
sprintf('Ο λογος υψους πλατους του περιγραμματος 6 ειναι %f και ο λογος πλατους υψους ειναι %f',yppl_6,plyp_6)
dfcode_6=dfchain_code(chain_6); %calculates the differential chain code

