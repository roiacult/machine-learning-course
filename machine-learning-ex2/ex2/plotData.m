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


XPos = [];
XNeg = [];
for i=1:length(X(:,1)),
  
  if( y(i) ),
    XPos = [XPos ; [X(i,1) X(i,2)] ] ;
  else 
    XNeg = [XNeg ; [X(i,1) X(i,2)] ] ;
  endif
  
endfor

plot(XPos(:,1),XPos(:,2) , 'k+' ,'LineWidth', 2, "markersize", 7);
plot(XNeg(:,1),XNeg(:,2),'ko','color','y' ,'LineWidth', 2, "markersize", 7);


% =========================================================================



hold off;

end
