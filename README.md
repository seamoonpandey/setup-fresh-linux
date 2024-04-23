# Development Environment Setup Scripts

This repository contains a set of shell scripts to automate the setup of various components required for a development environment. These scripts are designed to streamline the installation process and handle errors gracefully.

## Table of Contents

1. [Introduction](#introduction)
2. [Scripts Overview](#scripts-overview)
3. [Usage](#usage)
4. [Contributing](#contributing)
5. [License](#license)

## Introduction

Setting up a development environment can be time-consuming and error-prone. These scripts aim to simplify the process by automating the installation of essential tools and dependencies. They handle errors gracefully and provide informative feedback during the setup process.

## Scripts Overview

1. **remove_snapd.sh**: Removes snapd and related packages.
2. **install_basic_packages.sh**: Installs basic packages like curl, zsh, git, and tmux.
3. **setup_omz.sh**: Sets up Oh My Zsh.
4. **install_vscode.sh**: Installs Visual Studio Code.
5. **install_vim.sh**: Installs Vim.
6. **install_postman.sh**: Installs Postman.
7. **install_node_nvm.sh**: Installs Node.js using nvm and sets up environment for Next.js.
8. **setup_rbenv_ruby.sh**: Sets up rbenv and installs Ruby.
9. **setup_postgresql.sh**: Installs and sets up PostgreSQL.

## Usage

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/your-username/development-setup.git
   cd development-setup
   ```

2. **Run the Master Script**:

   ```bash
   chmod +x master.sh
   ./master.sh
   ```

\_script.sh

The master script will execute each individual setup script in sequence and handle errors gracefully. If any script fails, it will stop further execution and display an error message.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or create a pull request on GitHub.

## License

This project is licensed under the [MIT License](LICENSE).
