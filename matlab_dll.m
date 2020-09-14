%%
loadlibrary('matlab_dll', 'matlab_dll.h');
libfunctions('matlab_dll')
% libfunctionsview matlab_dll

%%
calllib('matlab_dll', 'test_print_console');

%%
length = 10;
A = ones(length, 1, 'single');
B = ones(length, 1, 'single') * 2;
C = zeros(length, 1, 'single');

%%
[C, A, B] = calllib('matlab_dll', 'test_vector_add', ...
    C,...
    A,...
    B,...
    length);

disp(C);
%%
% % we can use libpointer https://www.mathworks.com/help/matlab/ref/libpointer.html
% c = libpointer('singlePtr', C);
% calllib('matlab_dll', 'test_vector_add', ...
%     c,...
%     A,...
%     B,...
%     length);
% C = c.Value;

%%
unloadlibrary('matlab_dll')