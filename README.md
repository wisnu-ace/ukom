# UKOM

Wisnu Aryo Sulistiono
20082010083

# Cara Deploy

1. Extract zip file ke htdocs apabila pakai xampp, sesuaikan jika menggunakan platform lain (laragon, dll)
2. buka terminal atau git bash di directory project ini, contoh: XAMPP\htdocs\ukom-main
3. ketik "composer install" dan enter di terminal untuk setup project laravelnya
4. rename file .env.example menjadi .env dan konfigurasi databasenya sesuai server (kalau pake mysql berarti value databasenya mysql).
5. Buka terminal/bash window baru di directory yang sama, ketik dan enter:

-   php artisan key:generate
-   php artisan migrate:fresh --seed
-   npm install
-   npm run dev

6. Buka terminal/bash window baru di directory yang sama, ketik dan enter:

-   php artisan serve
