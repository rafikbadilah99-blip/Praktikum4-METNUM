% Nama  : Rafik Badilah
% NIM   : L0325009
% Kelas : Informatika PSDKU 3 A

x = input('Input nilai x: ');
% menghitung nilai e^x dengan nilai eksak
eksak = exp(x);

% menghitung nilai e^x dengan deret Taylor
n = input('Input nilai n: ');
p = 0;
for i = 0:n
    p = p + (x^i/factorial(i));
end

e = abs(eksak - p);

fprintf('\n=== Hasil Perhitungan e^x ===\n');
fprintf('%-24s = %.8f\n', 'Nilai eksak', eksak);
fprintf('%-24s = %.8f\n', 'Pendekatan deret Taylor', p);
fprintf('%-24s = %.8f\n', 'Galat (error)', e);
fprintf('\nRafik Badilah - L0325009\n');


