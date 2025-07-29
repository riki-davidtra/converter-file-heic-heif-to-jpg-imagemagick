# 🖼️ Convert HEIC HEIF to JPG (Windows)

Skrip ini memudahkan kamu mengonversi file `.HEIC .HEIF` ke `.JPG` menggunakan ImageMagick dan file batch otomatis.

---

## 📥 Langkah 1: Download File yang Diperlukan

Unduh dua file berikut:

- `Convert HEIC HEIF to JPG.bat`
- Installer: `ImageMagick-xxx.exe`  
  🔗 [Download ImageMagick](https://imagemagick.org/script/download.php)

---

## ⚙️ Langkah 2: Instal ImageMagick

1. Jalankan file installer `ImageMagick-xxx.exe`
2. **Checklist "Add to PATH"** saat proses instalasi
3. Pastikan opsi **"Install legacy utilities (convert)"** juga dicentang

---

## 📂 Langkah 3: Tambahkan ke Menu "Send To"

1. Tekan `Win + R`, ketik: shell:sendto
2. Akan muncul folder "SendTo"
3. Pindahkan file `Convert HEIC HEIF to JPG.bat` ke folder tersebut

---

## ✅ Cara Menggunakan

1. Buka File Explorer
2. Pilih **beberapa file `.HEIC .HEIF`** atau **sebuah folder** yang berisi file `.HEIC .HEIF`
3. Klik kanan > **Send to > Convert HEIC HEIF to JPG**
4. File hasil `.JPG` akan muncul di lokasi yang sama

---

## ⚠️ Jika Terjadi Error / Tidak Berhasil

Jika proses konversi gagal, atau tidak muncul file `.JPG`, coba beberapa hal berikut:

### 🔧 1. Cek Instalasi ImageMagick

- Pastikan ImageMagick terinstal dengan benar
- Waktu instalasi, **centang**:
  - "Add to PATH"
  - "Install legacy utilities (convert)"

### 🔐 2. Pastikan Folder Punya Izin Full Control

Kadang proses gagal karena skrip tidak bisa menulis ke folder. Kamu harus memastikan folder tempat file `.HEIC .HEIF` berada memberikan **Full Control** ke akun kamu.

#### Langkah Memberi Full Control:

1. Klik kanan pada folder tempat file `.HEIC .HEIF`, pilih **Properties**
2. Masuk ke tab **Security**
3. Klik tombol **Edit**
4. Pilih akun kamu (contoh: `User` atau `Administrator`)
5. Centang kotak **Full control** di bagian Allow
6. Klik **Apply**, lalu klik **OK**

> 💡 Tips: Jika kamu tidak melihat user kamu di daftar, klik **Add** dan masukkan nama akun Windows kamu.

### 🛡️ 3. Jalankan Sebagai Administrator

Jika tetap tidak berhasil, coba:

- Klik kanan pada file `.bat`
- Pilih **Run as administrator**

---

## 📃 Lisensi

MIT License © 2025

