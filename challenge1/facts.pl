% Base de datos de plataformas
% platform(brand, serial, year, ram_gb, cpu, cores, storage_gb, type, gpu, vram_gb).

% Marcas posibles: asus, dell, hp, lenovo, apple, acer, msi, samsung, huawei, microsoft
% CPU: amd, intel, apple, qualcomm, mediatek
% Tipo: pc, laptop, tablet
% GPU: nvidia, amd, intel, apple, arm

platform(asus, s0001, 2022, 16, amd,     8, 512, laptop, nvidia, 6).
platform(asus, s0002, 2023, 8,  intel,    4, 256, laptop, intel,  0).
platform(asus, s0003, 2021, 32, amd,    12, 1024, pc,    nvidia, 8).
platform(asus, s0004, 2020, 4,  intel,    2, 128, tablet, arm,    0).
platform(asus, s0005, 2019, 8,  amd,      4, 512, laptop, amd,    4).
platform(asus, s0006, 2024, 16, amd,      8, 512, pc,    nvidia, 12).
platform(asus, s0007, 2022, 64, intel,   24, 2048, pc,   nvidia, 24).
platform(asus, s0008, 2023, 12, amd,      6, 256, laptop, nvidia, 4).
platform(asus, s0009, 2022, 6,  intel,    4, 128, laptop, intel,  0).
platform(asus, s0010, 2021, 2,  qualcomm, 8, 64,  tablet, arm,    0).

platform(dell, s0011, 2022, 16, intel,    8, 512, laptop, nvidia, 6).
platform(dell, s0012, 2020, 32, amd,     16, 1024, pc,   amd,    8).
platform(dell, s0013, 2018, 8,  intel,    4, 256, laptop, intel,  0).
platform(dell, s0014, 2023, 64, amd,     32, 2048, pc,   nvidia, 16).
platform(dell, s0015, 2024, 16, intel,    8, 512, laptop, nvidia, 8).
platform(dell, s0016, 2022, 4,  mediatek, 8, 32,  tablet, arm,    0).
platform(dell, s0017, 2021, 8,  intel,    4, 128, laptop, intel,  0).
platform(dell, s0018, 2022, 24, amd,     12, 512, pc,    nvidia, 12).
platform(dell, s0019, 2019, 4,  intel,    2, 500, pc,    intel,  0).
platform(dell, s0020, 2023, 12, intel,    8, 512, laptop, nvidia, 4).

platform(hp, s0021, 2021, 8,  amd,       6, 256, laptop, amd,    4).
platform(hp, s0022, 2022, 16, intel,     8, 512, pc,     nvidia, 6).
platform(hp, s0023, 2020, 4,  intel,     2, 128, tablet, arm,    0).
platform(hp, s0024, 2023, 32, amd,      16, 1024, pc,    nvidia, 12).
platform(hp, s0025, 2019, 8,  intel,     4, 500, laptop, intel,  0).
platform(hp, s0026, 2024, 16, amd,       8, 256, laptop, nvidia, 6).
platform(hp, s0027, 2022, 6,  intel,     4, 128, laptop, intel,  0).
platform(hp, s0028, 2023, 2,  qualcomm,  8, 64,  tablet, arm,    0).
platform(hp, s0029, 2021, 12, amd,       6, 512, pc,     amd,    6).
platform(hp, s0030, 2024, 24, intel,    12, 2048, pc,    nvidia, 12).

platform(lenovo, s0031, 2022, 16, intel,  8, 512, laptop, nvidia, 6).
platform(lenovo, s0032, 2019, 8,  amd,    4, 256, laptop, amd,    4).
platform(lenovo, s0033, 2023, 32, intel, 16, 1024, pc,    nvidia, 8).
platform(lenovo, s0034, 2020, 4,  mediatek, 8, 64, tablet, arm,   0).
platform(lenovo, s0035, 2024, 12, amd,    6, 512, laptop, nvidia, 4).
platform(lenovo, s0036, 2021, 6,  intel,  4, 128, laptop, intel,  0).
platform(lenovo, s0037, 2022, 24, amd,   12, 1024, pc,    nvidia, 12).
platform(lenovo, s0038, 2023, 2,  qualcomm, 8, 32, tablet, arm,   0).
platform(lenovo, s0039, 2018, 4,  intel,  2, 500, pc,     intel,  0).
platform(lenovo, s0040, 2024, 64, amd,   24, 2048, pc,    nvidia, 24).

platform(apple, s0041, 2022, 8,  apple,   8, 256, laptop, apple,  8).
platform(apple, s0042, 2023, 16, apple,  10, 512, laptop, apple, 10).
platform(apple, s0043, 2020, 4,  apple,   8, 128, tablet, apple,  4).
platform(apple, s0044, 2019, 2,  apple,   6, 64,  tablet, apple,  4).
platform(apple, s0045, 2024, 24, apple,  12, 1024, pc,    apple, 16).
platform(apple, s0046, 2021, 8,  apple,   8, 512, laptop, apple,  8).

platform(acer, s0047, 2019, 4,  intel,    2, 128, laptop, intel,  0).
platform(acer, s0048, 2021, 8,  amd,      4, 256, laptop, amd,    4).
platform(acer, s0049, 2022, 16, intel,    8, 512, pc,     nvidia, 6).
platform(acer, s0050, 2023, 12, amd,      6, 512, laptop, nvidia, 4).
platform(acer, s0051, 2024, 32, intel,   16, 1024, pc,    nvidia, 12).

platform(msi, s0052, 2022, 16, amd,       8, 512, laptop, nvidia, 8).
platform(msi, s0053, 2023, 32, intel,    16, 1024, pc,    nvidia, 12).
platform(msi, s0054, 2021, 8,  amd,       4, 256, laptop, amd,    4).
platform(msi, s0055, 2024, 64, amd,      24, 2048, pc,    nvidia, 24).

platform(samsung, s0056, 2022, 4,  qualcomm, 8, 128, tablet, arm, 0).
platform(samsung, s0057, 2023, 6,  qualcomm, 8, 256, tablet, arm, 0).
platform(samsung, s0058, 2021, 8,  intel,    4, 256, laptop, intel, 0).
platform(samsung, s0059, 2024, 12, amd,     6, 512, laptop, nvidia, 4).

platform(huawei, s0060, 2020, 4,  mediatek, 8, 64,  tablet, arm,   0).
platform(huawei, s0061, 2022, 8,  mediatek, 8, 128, tablet, arm,   0).
platform(huawei, s0062, 2023, 16, intel,    8, 512, laptop, nvidia, 6).
platform(huawei, s0063, 2021, 8,  amd,      6, 256, laptop, amd,    4).

platform(microsoft, s0064, 2019, 8,  intel,  4, 256, laptop, intel, 0).
platform(microsoft, s0065, 2022, 16, intel,  8, 512, laptop, nvidia, 6).
platform(microsoft, s0066, 2023, 32, amd,  16, 1024, pc,    nvidia, 12).
platform(microsoft, s0067, 2024, 8,  qualcomm, 8, 256, tablet, arm, 0).

% Entradas adicionales para superar 50 y dar variedad
platform(asus, s0068, 2022, 16, amd,       8, 256, laptop, nvidia, 6).
platform(asus, s0069, 2023, 32, amd,      16, 512, pc,     nvidia, 12).
platform(dell, s0070, 2021, 12, intel,     6, 500, pc,     nvidia, 4).
platform(hp, s0071, 2022, 24, amd,        12, 512, pc,     amd,     8).
platform(lenovo, s0072, 2023, 8,  intel,    4, 128, laptop, intel,  0).
platform(acer, s0073, 2024, 16, amd,        8, 512, laptop, nvidia, 6).
platform(msi, s0074, 2023, 12, intel,       8, 256, laptop, nvidia, 4).
platform(apple, s0075, 2024, 16, apple,    10, 512, laptop, apple, 10).
platform(samsung, s0076, 2022, 3,  qualcomm, 8, 64, tablet, arm,    0).
platform(huawei, s0077, 2021, 2,  mediatek, 8, 32, tablet, arm,    0).
