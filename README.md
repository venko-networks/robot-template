# Automation Project Template with Robot Framework

This repository provides a template for starting new automation projects using the Robot Framework. The structure is designed to centralize variables and configurations, facilitate the creation of new test suites, and organize tests and settings in a practical and scalable way.

## Project Structure

- `commom/constants.resource`: Contains constant variables, such as URLs and IPs, centralizing configuration values that can be shared across tests.

- `tests/sample_test.robot`: Example test case. Each file in this directory represents a test suite, with organized scenarios configured to use centralized variables and hooks.

- `hooks/HOOKS.resource`: Contains common keywords for suite and test case *Setup* and *Teardown*. These hooks facilitate the preparation and cleanup of the environment for each execution.

- `libs/MyCustomLib.py`: This directory is intended for custom Python libraries. It enables the creation of custom keywords, extending the native functionality of the Robot Framework.

- `requirements.txt`: Project dependencies for installation in a virtual environment.

- `.gitignore`: Defines files and directories to be ignored by version control, such as virtual environment directories, logs, and intermediate test results.

## Usage Instructions

1. **Install Dependencies**: 

   Ensure Python 3.8 or higher is installed on your machine. To keep the environment clean and isolated, it’s recommended to install dependencies in a virtual environment:

   ### Optional: Set Up a Virtual Environment

   #### Windows
   ```bash
   python -m venv env
   .\env\Scripts\activate
   ```

   #### Linux / MacOS
   ```bash
   python3 -m venv env
   source env/bin/activate
   ```

   After activating the virtual environment, install the Robot Framework and any other required libraries by running:

    ```bash
    pip install -r requirements.txt
    ```

2. **Configuration**: Adjust the variables in `commom/constants.resource` according to the desired test environment.

3. **Running Tests**:

    To execute the test suites, navigate to the project directory and use the command:

    ```bash
    robot tests/sample_test.robot
    ```

4. **Test Structure**:
   - **Setup and Teardown**: Each suite and test case can be configured with *Setup* and *Teardown* routines, which can be adjusted in the `hooks/HOOKS.resource` file.
   - **Variables and Constants**: The `commom/constants.resource` file stores shared variables, ensuring easy maintenance and scalability.

## Contribution

This project template is customizable and can be adapted for different automation scenarios. Contributions are welcome for improvements and new features.