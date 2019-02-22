cmake ^
      -G "%CMAKE_GENERATOR%" ^
      -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -DWITH_INCHI=ON ^
      -DPYTHON_EXECUTABLE=%PYTHON% ^
      -DPYTHON_INCLUDE_DIR=%LIBRARY_INC% ^
      -DPYTHON_BINDINGS=ON ^
      -DRUN_SWIG=ON ^
      -DCMAKE_BUILD_TYPE=Release ^
      .

cmake --build . --target install --config Release

echo d|xcopy %LIBRARY_PREFIX%\bin\data %PREFIX%\share\openbabel /e /c
rmdir /s /q %LIBRARY_PREFIX%\bin\data
