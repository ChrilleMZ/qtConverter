
set ProjectPath=%1
set UIPath=%2
set PYPath=%3

:: Convert from .ui to PySide2 .py
Echo Convert PySide2 ui to py
"%ProjectPath:"=%\venv\Scripts\pyside2-uic.exe" %UIPath% -o %PYPath%