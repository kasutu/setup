# Setup Scripts

This repository contains setup scripts for various operating systems. These scripts automate the installation and configuration of various development tools and software.

## Scripts Included

Currently, the following setup scripts are available:

- [x] `setup-ubuntu.sh`: For Ubuntu 22.04.03 LTS
- [x] `setup-arch.sh`: For Arch Linux (based on Arch Linux package manager)
- [x] `test.sh`: A testing script for checking the installation of software
- [ ] `setup-win.bat`: For Windows (coming soon)

## Usage

To use these scripts, follow these steps:
1. Clone this repository.
    ```bash
    git clone https://github.com/kasutu/setup.git
    ```
2. Navigate to the directory containing the setup script.
    ```bash
    cd setup
    ```
3. Make the script executable with the following command (for Unix-like systems):
   > Please note that this script requires `sudo` privileges to install and configure software.
    ```bash
    sudo chmod +x setup-your-os.sh
    ```
4. Run the script with the following command:
    ```bash
    sudo sh setup-your-os.sh [OPTIONS]
    ```
    ```bash
    sudo bash setup-your-os.sh [OPTIONS]
    ```

Replace `your-os` with `ubuntu` or `win` depending on the script you want to run.

---
## Testing

6. Once the setup script has completed, you can perform testing of the installed software using the `test.sh` script. Run it with the following command:
   ```bash
   sudo sh test.sh
   ```
---

# Scripts
| 📜 Script Name | 💻 Software Installed | 🌍 Environment Variables Configured | 📝 Special Instructions |
| --- | --- | --- | --- |
| `setup-ubuntu.sh` | <ul><li>Visual Studio Code</li><li>Java Development Kit (JDK) and Maven</li><li>Node.js</li><li>Android SDK</li><li>adb</li><li>scrcpy</li><li>Docker</li><li>OpenSSH Server</li><li>NVIDIA GPU drivers</li></ul> | <ul><li>Java (`JAVA_HOME`)</li><li>Android SDK (`ANDROID_HOME`)</li></ul> | You can use the `sudo sh setup-ubuntu.sh --with-nvidia` option when running this script to include the installation of NVIDIA GPU drivers. This is useful if your system has an NVIDIA GPU and you need the drivers installed.
| `setup-arch.sh` | <ul><li>Visual Studio Code</li><li>Java Development Kit (JDK) and Maven</li><li>Node.js</li><li>Android SDK</li><li>adb</li><li>scrcpy</li><li>Docker</li><li>OpenSSH Server</li></ul> | <ul><li>Java (`JAVA_HOME`)</li><li>Android SDK (`ANDROID_HOME`)</li></ul> | WiFi drivers are specific to each system and cannot be scripted generically. Refer to the Arch Linux documentation for specific instructions. |
| `test.sh` | <ul><li>Checks and tests the installation of various software packages</li></ul> | None | No special instructions. |
