
set ProjectPath=%1
set UIPath=%2
set PYPath=%3

:: Convert from .ui to PySide6 .py
Echo Convert PySide6 ui to py
"%ProjectPath:"=%\venv\Scripts\pyside6-uic.exe" %UIPath% -o %PYPath%