import sys

def convert_to_qt(filePath):
    """ Convert compiled .ui file from PySide2 to Qt.py
    """

    def parse(line):
        line = line.replace("from PySide6.", "from Qt.")
        line = line.replace("QtWidgets.QApplication.translate",
                            "QtCompat.translate")
        return line

    with open(filePath, "r") as f:
        lines = f.readlines()

    parsed = list()
    for line in lines:
        line = parse(line)
        parsed.append(line)

    with open(filePath, "w") as f:
        f.write("".join(parsed))

    return True


def convert_to_py(py_file):
    convert_to_qt(py_file)


if __name__ == "__main__":
    convert_to_py(sys.argv[1])
    print("Converted to Qt.py")
