% This function calculates the width/height rations of each contour.The 
% input arguments of this function are:
% v: differential chain code

function [yppl,plyp]=rations(v)

j=length(v);
for i=1:j
    if(v(i)==0 || v(i)==1 || v(i)==7)
        y(i)=1;%for directions 0 1 7 putting 1 to vector that counts the windth
    elseif (v(i)==3 || v(i)==4 || v(i)==5)
        y(i)=-1;%for directions 3 4 5 putting -1 to vector that counts the windth
    elseif (v(i)==2 || v(i)==6)
        y(i)=0; %putting 0 for directions 2 6
    end
end
S(1)=y(1);
for i=2:j
    S(i)=y(i)+S(i-1);
end
pl=max(S)-min(S);

for i=1:j
    if(v(i)==1 || v(i)==2 || v(i)==3)
        z(i)=1;%for directions 1 2 3 putting 1 to vector that counts the  height
    elseif (v(i)==5 || v(i)==6 || v(i)==7)
        z(i)=-1;%for directions 5 6 7 putting -1 to vector that counts the  height
    elseif (v(i)==0 || v(i)==4)
        z(i)=0;%for directions 0 4 putting 0 to vector that counts the  height
    end
end
S2(1)=z(1);
for i=2:j
    S2(i)=z(i)+S2(i-1); %sums 
end
pl=max(S)-min(S); %platos perigrammatos
yp=max(S2)-min(S2) ;%ypsos perigrammatos         
yppl=yp/pl ;%logos ypsos pros to platos
plyp=pl/yp ;%logos platos pros to ypsos
    