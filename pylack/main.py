import os
from docx import Document
from warnings import filterwarnings

filterwarnings("ignore")


def root():
    projectDirectory = input("Enter project name: ")
    try:
        os.mkdir(path=projectDirectory)
        os.chdir(projectDirectory)
    except OSError as e:
        print("[Error 17] Name already exist")

    get_child_dirs()


def data():
    parent_dir = "data"
    os.mkdir(path=parent_dir)
    os.chdir(path=parent_dir)

    def child_data():
        os.mkdir(path="raw")
        os.mkdir(path="interim")
        os.mkdir(path="processed")
        os.mkdir(path="external")

    child_data()
    os.chdir("../")


def models():
    parent_dir = "models"
    os.mkdir(path=parent_dir)


def notebooks():
    parent_dir = "notebooks"
    os.mkdir(path=parent_dir)


def src():
    parent_dir = "src"
    os.mkdir(path=parent_dir)
    os.chdir(path=parent_dir)

    def child_src():
        os.mkdir(path="data")
        os.mkdir(path="features")
        os.mkdir(path="models")
        os.mkdir(path="visualization")

    child_src()
    os.chdir("../")


def reports():
    parent_dir = "reports"
    os.mkdir(path=parent_dir)
    os.chdir(path=parent_dir)

    def child_reports():
        os.mkdir(path="figures")
        pdf_extension = "pdf"
        report_file = "reports"
        docx_filename = report_file + "." + pdf_extension
        doc = Document()
        doc.save(docx_filename)

    child_reports()
    os.chdir("../")


def get_child_dirs():
    data()
    models()
    notebooks()
    src()
    reports()

    return None


if __name__ == "__main__":
    root()
