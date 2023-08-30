# Virtual Environment
The following creates a virtual environment
```python
python -m venv PATH_TO_VENV_DIR
```
Where the `-m` flag is used to run a module as a script directly from the command line.
The venv module is a built-in module in Python used for creating virtual environments. 
By running python -m venv, you are instructing Python to execute the venv module.
<br></br>

This command allows us to activate the virtual environment in:
####⚠️ **Unix-like** systems (such as Linux or macOS).
```bash
source PATH_TO_VENV_DIR/bin/activate
```
#### Windows
```cmd
PATH_TO_VENV_DIR\Scripts\activate
```
<br></br>
Pip freeze shows us a list of all the installed Python packages and their corresponding versions in the current Python environment.
We redirect that output to the requirements.txt file by using the `>` operator.
```bash
pip freeze > requirements.txt
```
This allows us to keep track of all the packages in a certain environment and store it in a file.
<br></br>
<br></br>
To install the packages listed in the requirements.txt file in another environment, you can use the command 
```bash
pip install -r requirements.txt
```
Where the `-r` flag indicates that you want to install packages based on the requirements specified in the file.
