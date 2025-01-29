
set ProjectPath=%1
set UIPath=%2
set PYPath=%3

:: Convert from .ui to PySide6 .py
Echo Convert Pyside6 ui to py
"%ProjectPath:"=%\venv\Scripts\pyside6-uic.exe" %UIPath% -o %PYPath%

::Convert from PySide2 to Qt
Echo Convert Pyside6 to Qt
"%ProjectPath:"=%\venv\Scripts\python.exe" D:\Projects\Code\QtConvert\qt6_convert_to_qtpy.py %PYPath%
