% Nama  : Rafik Badilah
% NIM   : L0325009
% Kelas : Informatika PSDKU 3 A

x = input('Input nilai x: '); % Masukkan 0.3
eksak = exp(x);

% n ditentukan langsung sesuai soal n = {0,1,2,3,4}
n_list = [0, 1, 2, 3, 4];

fprintf('\n=== Hasil Perhitungan e^x dengan Deret Taylor ===\n');
fprintf('Nilai Eksak e^(%.2f) = %.8f\n\n', x, eksak);
fprintf('-----------------------------------------------------------------------\n');
fprintf('  n  |  Pendekatan Taylor  |  Galat Mutlak (E_a)  |  Galat Relatif (E_r) \n');
fprintf('-----------------------------------------------------------------------\n');

for k = 1:length(n_list)
    n = n_list(k);
    p = 0;

    for i = 0:n
        p = p + (x^i / factorial(i));
    end

    e_abs = abs(eksak - p);     % Galat Mutlak
    e_rel = e_abs / eksak;       % Galat Relatif

    fprintf(' %2d  |     %.8f     |     %.8f     |     %.8f     \n', n, p, e_abs, e_rel);
end

fprintf('-----------------------------------------------------------------------\n');
fprintf('\nRafik Badilah - L0325009\n');


