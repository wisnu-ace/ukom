# UKOM

Wisnu Aryo Sulistiono
20082010083

# Cara Deploy

1. Extract zip file ke htdocs apabila pakai xampp, sesuaikan jika menggunakan platform lain (laragon, dll)
2. Buka terminal atau git bash di directory project ini, contoh: XAMPP\htdocs\ukom-main
3. Ketik "composer install" dan enter di terminal untuk setup project laravelnya
4. Rename file .env.example menjadi .env dan konfigurasi databasenya sesuai server (kalau pake mysql berarti value databasenya mysql, nama database harus sesuai juga sama yang dibuat di server).
5. Buka terminal/bash window baru di directory yang sama, ketik dan enter:

-   php artisan key:generate
-   php artisan migrate:fresh --seed
-   npm install
-   npm run dev

6. Update databasenya di phpmyadmin, file nya bernama laravel.sql ada di root folder project ini
7. Buka terminal/bash window baru di directory yang sama, ketik dan enter:

-   php artisan serve

# Assign Admin harus diubah melalui sql servernya

-   Jika pakai mysql, menuju ke localhost/phpmyadmin, navigate ke database yang dipakai di project ini
-   Navigate ke tabel users, ganti role user yang ingin diubah jadi ke role admin
