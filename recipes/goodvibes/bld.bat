:: Save source for C code and remove compiled libraries
copy "%SRC_DIR%\goodvibes\share\symmetry.c" symmetry.c
copy "%SRC_DIR%\goodvibes\share\LICENSE.txt" symmetry.LICENSE.txt
rd /S /Q "%SRC_DIR%\goodvibes\share\"

:: Install Python
"%PYTHON%" -m pip install . -vv


:: Compile C code and move to expected destination
md %SP_DIR%\goodvibes\share\
"%CC%" /LD symmetry.c /OUT:"%SP_DIR%\goodvibes\share\symmetry_win.dll"
