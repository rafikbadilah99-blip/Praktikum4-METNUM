% Nama  : Rafik Badilah
% NIM   : L0325009
% Kelas : Informatika PSDKU 3 A

x = 1;
eksak = sin(x);

% N ditentukan langsung sesuai soal N = {1, 2, 3, 4, 5}
N_list = [1, 2, 3, 4, 5];

fprintf('\n=== Hasil Perhitungan sin(1) dengan Deret Taylor ===\n');
fprintf('Nilai Eksak sin(1) = %.8f\n\n', eksak);
fprintf('-----------------------------------------------------------------------\n');
fprintf('  N  |  Pendekatan Taylor  |  Galat Mutlak (E_a)  |  Galat Relatif (E_r) \n');
fprintf('-----------------------------------------------------------------------\n');

for k = 1:length(N_list)
    N = N_list(k);
    p = 0;

    % Rumus Deret Taylor sin(x) dari n = 0 sampai N
    for n = 0:N
        p = p + ((-1)^n * x^(2*n+1) / factorial(2*n+1));
    end

    E_a = abs(eksak - p);    % Galat Mutlak
    E_r = E_a / eksak;       % Galat Relatif

    fprintf(' %2d  |     %.8f     |     %.8f     |     %.8f     \n', N, p, E_a, E_r);
end

fprintf('-----------------------------------------------------------------------\n');
fprintf('\nRafik Badilah - L0325009\n');


