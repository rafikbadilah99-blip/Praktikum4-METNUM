% Nama  : Rafik Badilah
% NIM   : L0325009
% Kelas : Informatika PSDKU 3 A

% Menghitung nilai sin x secara eksak
x = 1;
eksak = sin(x);

% Perhitungan dengan deret Taylor
N = input('N = ');
p = 0;
for i = 0:N
    p = p + ((-1)^i * x^(2*i+1) / factorial(2*i+1));
end

% Menghitung error
error = abs(eksak - p);

% Tampilan Output Rapi
fprintf('\n=== Hasil Perhitungan sin(x) ===\n');
fprintf('%-24s = %.8f\n', 'Nilai eksak', eksak);
fprintf('%-24s = %.8f\n', 'Pendekatan deret Taylor', p);
fprintf('%-24s = %.8f\n', 'Galat (error)', error);
fprintf('\nRafik Badilah - L0325009\n');


