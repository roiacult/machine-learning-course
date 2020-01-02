
load('ex6data3.mat');


values = [0.1 ; 0.3 ; 1 ; 3 ; 10 ; 30];
si = length(values);

testErros = zeros(si^2,3);

num = 0;
for i=1:si,
  for j=1:si,
    num = num + 1;
    model= svmTrain(X, y, values(i), @(x1, x2) gaussianKernel(x1, x2,values(j)));
    predictions = svmPredict(model, Xval);
    testErros(num,1) = mean(double(predictions ~= yval));
    testErros(num,2) = i;
    testErros(num,3) = j;
  endfor  
endfor

num
size(testErros)
[mi,pos] = min(testErros(:,1));


fprintf("position is : %f and min is %f ",pos,mi);
fprintf("best value of c is : %f , best value of sigma is %f ",values(testErros(pos,2)),values(testErros(pos,3)))

testErros