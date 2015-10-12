function dfcode=dfchain_code(chain)

n=length(chain);    %calculates the length of the chain code

for i=1:n-1;
    chain(:,i)=mod((chain(:,i+1)-chain(:,i)),8);%produses the differencial chain code for n-1 elements
end

chain(:,n)=mod(chain(:,1)-chain(:,n),8);%produses the differencial chain code for the last element
dfcode=chain;   %return the result
