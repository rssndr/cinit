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
- `.gitignore`: A standard .gitignore file customised for C.
- `main.c`: A starter C source file.
- `README.md`: A placeholder README file.
- `LICENSE`: A customized MIT license with your name and the current year.

You can customize the initialization with the following repo-specific options:
- `--owner=<name>`: Sets the owner name for this repo (e.g., `--owner="Collaborator Name"`).
- `--license=<type>`: Specifies the license (e.g., `--license=GPL-2.0`).
- `--files=<list>`: Defines which files to include (e.g., `--files="main.c LICENSE"`).
- `--year=<year>`: Sets a specific copyright year (e.g., `--year=2024`).

Example:
```bash
cinit --owner="Collaborator Name" --license=GPL-2.0 --files="main.c LICENSE" --year=2024
```

The resulting directory will contain the specified files, with a customized LICENSE reflecting the provided options.

## Current Features
- **Dynamic License Generation**: The LICENSE file is created each time from a template, replacing `{OWNER_NAME}` with your name (set during installation) and `{DEFAULT_YEAR}` with the current year.
- **Configurable Setup**: Uses `~/.config/cinit/cinit.conf` to store default settings (e.g., license type, included files).
- **Default Templates**: Provides a pre-defined set of files for new projects.

## TODO:
- Add command-line options changing default settings.
- Add helper options, like `--help` for quick instructions for usage and command-line options, and `--defaults`, to show default user settings.
- Enhance documentation

## Contributing
Feel free to fork this repository, make improvements, and submit pull requests. Suggestions for new features or bug reports are welcome!

## License
This project itself is licensed under the MIT License. See the included LICENSE file for details.



















```

### Updated "Current Features" Section
```markdown
## Current Features
- **Dynamic License Generation**: The LICENSE file is created each time from a template, replacing `{OWNER_NAME}` with the specified or default owner name and `{DEFAULT_YEAR}` with the current or specified year.
- **Configurable Setup**: Uses `~/.config/cinit/cinit.conf` to store default settings (e.g., license type, included files), which can be overridden with command-line options.
- **Default Templates**: Provides a pre-defined set of files for new projects from `~/.config/cinit/default/`.
- **Logging**: Outputs the loading of each file to the terminal for user feedback.
```

### Explanation
- **Usage**: Added details on the new repo-specific options (`--owner`, `--license`, `--files`, `--year`) with examples, reflecting the script’s current capabilities. Included the logging behavior in the default run description.
- **Current Features**: Updated to mention the dynamic license with overrides, the config’s role with overrides, and the new logging feature.

### Action
- Open `~/projects/cinit/README.md`.
- Replace the existing "Usage" section with the updated version above.
- Replace the existing "Current Features" section with the updated version above.
- Save the file, then commit and push:
  ```bash:disable-run
  git add README.md
  git commit -m "Update README.md with command-line options and logging details"
  git push origin main
  ```

This keeps the `README.md` current with the script’s functionality. Let me know if you’d like to adjust anything before moving to the next group of options (default changes)!
```
