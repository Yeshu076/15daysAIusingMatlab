clc;
clear;
method = input('enter the no->','s');
switch lower(method)
  case 'one'
    disp('Method is 1')
  case 'two'
    disp('Method is 2')
  case 'three'
    disp('Method is 3')
  otherwise
    disp('Unknown method.')
end
        