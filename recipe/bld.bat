@echo on

mkdir build
cd build

echo %CMAKE_ARGS%

cmake ^
    -G "Ninja" ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    ..
if errorlevel 1 exit 1

type CMakeCache.txt

:: Install.
cmake --build . --config Release --target install
if errorlevel 1 exit 1
