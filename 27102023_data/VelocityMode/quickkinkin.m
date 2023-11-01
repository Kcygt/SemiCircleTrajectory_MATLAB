function A=quickkinkin(q)
% Quick kinova kinematics
% A=quickkinkin(data.JointPosition(:,[2 4 6]));
% plot(A')
l=[201.4+201.4;
    208.4+105.4;
    105.9+61.5]/1000;

[r,c]=size(q);
A=zeros(2,r);
for jj=1:r
th=q(jj,:);
x=[cos(cumsum(th)); sin(cumsum(th))]*l;
A(:,jj)=x;
end
%plot(A)