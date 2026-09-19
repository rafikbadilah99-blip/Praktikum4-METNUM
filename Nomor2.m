% Nama  : Rafik Badilah
% NIM   : L0325009
% Kelas : Informatika PSDKU 3 A

% a. Perhitungan secara eksak
eksak = 0.0;
for i = 1:20
    eksak = eksak + 1.0 / i;
end

% b. Masing-masing pembagian dibulatkan
pembulatan = 0.0;
for j = 1:20
    pembulatan = pembulatan + 1.0 / j;
end
pembulatan = ceil(pembulatan);

% c. Tanpa looping (menggunakan fungsi sum)
n = 1:20;
deret = 1 ./ n;
sum_tanpa_looping = sum(deret);

% Menghitung nilai galat/error
galat_pembulatan = abs(eksak - pembulatan);
galat_sum = abs(eksak - sum_tanpa_looping);

% Tampilan Tabel Output
fprintf('--------------------------------------------------------------------\n');
fprintf('%-30s | %-18s | %-18s\n', 'Metode Perhitungan', 'Hasil Perhitungan', 'Galat Error');
fprintf('--------------------------------------------------------------------\n');
fprintf('%-30s | %-18.8f | %-18.8f\n', 'Eksak', eksak, 0);
fprintf('%-30s | %-18.8f | %-18.8f\n', 'Masing-masing dibulatkan', pembulatan, galat_pembulatan);
fprintf('%-30s | %-18.8f | %-18.8f\n', 'Tanpa looping (sum)', sum_tanpa_looping, galat_sum);
fprintf('--------------------------------------------------------------------\n');
fprintf('Rafik Badilah - L0325009\n');


