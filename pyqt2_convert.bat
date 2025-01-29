
set ProjectPath=%1
set UIPath=%2
set PYPath=%3

:: Convert from .ui to PySide2 .py
Echo Convert PySide2 ui to py
"%ProjectPath:"=%\venv\Scripts\pyside2-uic.exe" %UIPath% -o %PYPath%

::Convert from PySide2 to Qt
Echo Convert Pyside2 to Qt
"%ProjectPath:"=%\venv\Scripts\python.exe" D:\Projects\Code\QtConvert\qt2_convert_to_qtpy.py %PYPath%
