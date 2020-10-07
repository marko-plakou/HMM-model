A=[log10(9/10),log10(1/10);log10(1/10),log10(9/10)];
B=[log10(2/5),log10(2/5),log10(1/10),log10(1/10);log10(1/5),log10(1/5),log10(3/10),log10(3/10)];
symbols={'A','G','T','C'};
statenames={'a','b'};
path=hmmviterbi({'G','G','C','T'},log10(A),log10(B),'Symbols',symbols,'Statenames',statenames);
disp(path)
score=A(1,1)*B(1,2)*A(1,1)*B(1,2)*A(1,1)*B(1,4)*A(1,1)*B(1,3);
disp("With the score:")
disp(score)