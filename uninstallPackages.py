import subprocess

packages = [
    "Appium-Python-Client", "attrs", "beautifulsoup4", "cached-property",
    "certifi", "cffi", "chardet", "charset-normalizer", "click", "colorama",
    "comtypes", "convertdate", "cryptography", "decorator", "defusedxml",
    "dnspython", "docutils", "et-xmlfile", "exchangelib", "fire", "fonttools",
    "fpdf2", "furl", "graphviz", "h11", "hijri-converter", "holidays",
    "htmldocx", "idna", "imageio", "importlib_metadata", "isodate",
    "java-access-bridge-wrapper", "jsonpath-ng", "jsonschema",
    "jsonschema-specifications", "kitchen", "korean-lunar-calendar", "lazy_loader",
    "lxml", "more-itertools", "MouseInfo", "mss", "netsuitesdk", "networkx",
    "notifiers", "numpy", "O365", "oauthlib", "opencv-python", "openpyxl",
    "orderedmultidict", "outcome", "packaging", "pandas", "pdfminer.six",
    "pdfminer3k", "pendulum", "pillow", "platformdirs", "ply", "prompt-toolkit",
    "psutil", "PyAutoGUI", "pycparser", "PyGetWindow", "Pygments", "PyJWT",
    "PyMeeus", "PyMsgBox", "pynput", "pynput-robocorp-fork", "pyotp", "pypdf",
    "pyperclip", "PyRect", "PyScreeze", "PySocks", "pyspnego", "python-dateutil",
    "python-docx", "python-dotenv", "pytweening", "pytz", "pytz-deprecation-shim",
    "pytzdata", "PyWavelets", "pywin32", "pywinauto", "PyYAML", "referencing",
    "requests", "requests-file", "requests_ntlm", "requests-oauthlib",
    "requests-toolbelt", "robocorp-storage", "robotframework", "robotframework-appiumlibrary",
    "robotframework-autoitlibrary",
    "robotframework-debuglibrary", "robotframework-jsonlibrary",
    "robotframework-pythonlibcore", "robotframework-requests", "robotframework-sapguilibrary",
    "robotframework-seleniumlibrary", "robotframework-seleniumtestability",
    "robotframework-SikuliLibrary", "robotframework-sudslibrary-aljcalandra",
    "robotframework-wadlibrary", "robotframework-zoomba", "rpds-py", "scikit-image",
    "scipy", "selenium", "setuptools", "simple-salesforce", "six", "slate3k",
    "smartsheet-python-sdk", "sniffio", "sortedcontainers", "soupsieve", "sspilib",
    "stringcase", "suds-bis", "tenacity", "termcolor", "tifffile", "trio",
    "trio-websocket", "tweepy", "typing_extensions", "tzdata", "tzlocal",
    "uiautomation", "urllib3", "validators", "wcwidth", "webdriver-manager",
    "websocket-client", "wrapt", "wsproto", "xlrd", "xlutils", "xlwt", "zeep", "zipp"
]

for package in packages:
    subprocess.run(["pip", "uninstall", "-y", package])
