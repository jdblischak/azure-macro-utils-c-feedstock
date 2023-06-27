@echo on

rem directory "build" already exists
cd build

cmake -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ..
if errorlevel 1 exit 1

cmake --build . --target install
if errorlevel 1 exit 1
