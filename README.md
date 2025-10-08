# Cinit - C Project Initializer

Cinit is a simple bash script designed to initialize new C projects with a set of default files and a customized license. It automates the setup process, allowing users to quickly start coding with a standardized structure.

## Installation

1. Clone the repository or download the files to your local machine:
   ```bash
   git clone https://github.com/yourusername/cinit.git
   cd cinit
   ```
2. Run the installation script with sudo privileges:
   ```bash
   ./install.sh
   ```
   - You will be prompted to enter your name, which will be used for the copyright notice in the license.
   - The script sets up the configuration file (`~/.config/cinit/cinit.conf`), copies default templates, and installs the `cinit` command to `/usr/local/bin/`.

## Usage

To initialize a new C project in the current directory, simply run:
```bash
cinit
```

This will:
- Copy default files (Makefile, .gitignore, main.c, README.md) from `~/.config/cinit/default/` to the current directory.
- Generate a LICENSE file based on the default license (currently MIT) from `~/.config/cinit/templates/licenses/`, dynamically inserting your name and the current year (e.g., 2025).

The resulting directory will contain:
- `Makefile`: A basic build script.
- `.gitignore`: A standard Git ignore file.
- `main.c`: A starter C source file.
- `README.md`: A placeholder file.
- `LICENSE`: A customized MIT license with your name and the current year.

## Current Features
- **Dynamic License Generation**: The LICENSE file is created each time from a template, replacing `{OWNER_NAME}` with your name (set during installation) and `{DEFAULT_YEAR}` with the current year.
- **Configurable Setup**: Uses `~/.config/cinit/cinit.conf` to store default settings (e.g., license type, included files).
- **Default Templates**: Provides a pre-defined set of files for new projects.

## TODO:
- Add command-line options (e.g., `--license`, `--owner-name`, `--files`) to customize behavior per project.
- Enhance documentation, add an `--help` option with quick instructions for usage.

## Contributing
Feel free to fork this repository, make improvements, and submit pull requests. Suggestions for new features or bug reports are welcome!

## License
This project itself is licensed under the MIT License. See the included LICENSE file for details.

