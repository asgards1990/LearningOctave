function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


Xadmitted=[];
XNadmitted=[];
sizeX=0;

for k = 1:size(y),
        if y(k)>0,
			sizeX=size(Xadmitted,1);
                Xadmitted(sizeX+1,1)=X(k,1);
			Xadmitted(sizeX+1,2)=X(k,2);
                else 
			sizeX=size(XNadmitted,1);
			XNadmitted(sizeX+1,1)=X(k,1);
			XNadmitted(sizeX+1,2)=X(k,2);
        end;
end;


plot(Xadmitted(:,1),Xadmitted(:,2),"k+b");
plot(XNadmitted(:,1),XNadmitted(:,2),"kog");








% =========================================================================



hold off;

end
