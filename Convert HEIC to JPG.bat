@echo off
setlocal enabledelayedexpansion

REM Ensure folder is provided
if "%~1"=="" (
    echo Tidak ada folder target. Harap gunakan "Send to".
    pause
    exit /b
)

cd /d "%~1"

REM Check for HEIC files
dir *.heic *.HEIC >nul 2>&1
if errorlevel 1 (
    echo Tidak ada file .heic di folder ini.
    pause
    exit /b
)

echo File .heic ditemukan di folder: %~1

echo. 
set /p confirmConversion=Konversi semua file .heic ke .jpg? (y/n): 
if /i not "%confirmConversion%"=="y" (
    echo Konversi dibatalkan.
    pause
    exit /b
)

REM Create folders if not exist
if not exist "trash" (
    mkdir "trash"
)
if not exist "converted" (
    mkdir "converted"
)

REM Initialize counters
set successCount=0
set failCount=0 

echo Mengonversi...
echo. 
for %%f in (*.heic *.HEIC) do (
    echo Mengonversi: %%f
    magick "%%f" -quality 100 "converted\%%~nf.jpg"

    if exist "converted\%%~nf.jpg" ( 
        echo "converted\%%~nf.jpg"
        echo "trash\%%f"
        echo Berhasil dikonversi. 
        echo -----------------------------------------------
        
        set /a successCount+=1
        move "%%f" "trash\" >nul 
    ) else (
        echo Gagal konversi: %%f
        set /a failCount+=1
    )
)

echo.
echo Statistik:
echo Berhasil dikonversi: !successCount!
echo Gagal dikonversi: !failCount! 

echo.
echo ===============================================
REM Confirm move back converted files
set /p confirmMoveBack=Semua file hasil konversi berada di folder "converted", ingin dipindahkan ke tempat asal? (y/n): 
if /i "!confirmMoveBack!"=="y" (
    move /Y "converted\*.jpg" . >nul
    rd /s /q "converted"
    echo Berhasil dipindahkan.
) else (
    echo Tidak dipindahkan.
)

echo.
echo ===============================================
REM Confirm delete trash
set /p confirmDeleteTrash=Semua file asli telah dipindahkan ke folder "trash", ingin hapus semuanya? (y/n): 
if /i "!confirmDeleteTrash!"=="y" (
    for /f %%c in ('dir /a-d /b "trash" ^| find /v /c ""') do set deleteCount=%%c
    rd /s /q "trash"
    echo Berhasil dihapus. Total file yang dihapus: !deleteCount!. 
) else ( 
    echo Tidak dihapus.
)

pause
