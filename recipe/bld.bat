:: MSVC is preferred.
set CC=cl.exe
set CXX=cl.exe

mkdir build
cd build

cmake ^
    -G "Ninja" ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    ..
if errorlevel 1 exit 1

:: Install.
cmake --build . --target install
if errorlevel 1 exit 1
