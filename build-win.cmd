setlocal

md build\win-x64
cd build\win-x64
cmake ../.. ^
  -DCMAKE_C_COMPILER=C:/msys64/mingw64/bin/gcc.exe ^
  -DCMAKE_CXX_COMPILER=C:/msys64/mingw64/bin/g++.exe ^
  -DCMAKE_MAKE_PROGRAM="c:\Program Files\CMake\bin\ninja.exe" ^
  -G Ninja

"c:\Program Files\CMake\bin\ninja.exe"
cd ..\..

md build\win-x86
cd build\win-x86
cmake ../.. ^
  -DCMAKE_C_COMPILER=C:/msys64/mingw32/bin/gcc.exe ^
  -DCMAKE_CXX_COMPILER=C:/msys64/mingw32/bin/g++.exe ^
  -DCMAKE_MAKE_PROGRAM="c:\Program Files\CMake\bin\ninja.exe" ^
  -G Ninja

"c:\Program Files\CMake\bin\ninja.exe"