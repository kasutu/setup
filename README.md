# Setup Scripts

This repository contains setup scripts for various operating systems. These scripts automate the installation and configuration of various development tools and software.

## Scripts Included

Currently, the following setup scripts are available:

- [x] `setup-ubuntu.sh`: For Ubuntu 22.04.03 LTS
- [x] `setup-arch.sh`: For Arch Linux (based on Arch Linux package manager)
- [x] `test.sh`: A testing script for checking the installation of software
- [ ] `setup-win.sh`: For Windows (coming soon)

## Usage

To use these scripts, follow these steps:

1. Clone this repository or download the desired setup script.
2. Open a terminal.
3. Navigate to the directory containing the setup script.
4. Make the script executable with the following command (for Unix-like systems):
   > Please note that this script requires `sudo` privileges to install and configure software.
    ```bash
    chmod +x setup-your-os.sh
    ```
6. Run the script with the following command:
    ```bash
    ./setup-your-os.sh
    ```

Replace `your-os` with `ubuntu` or `win` depending on the script you want to run.

---
## Testing

6. Once the setup script has completed, you can perform testing of the installed software using the `test.sh` script. Run it with the following command:
   ```bash
   ./test.sh
---

# Scripts
| 📜 Script Name | 💻 Software Installed | 🌍 Environment Variables Configured | 📝 Special Instructions |
| --- | --- | --- | --- |
| `setup-ubuntu.sh` | <ul><li>Visual Studio Code</li><li>Java Development Kit (JDK) and Maven</li><li>Node.js</li><li>Android SDK</li><li>adb</li><li>scrcpy</li><li>Docker</li><li>OpenSSH Server</li><li>NVIDIA GPU drivers</li></ul> | <ul><li>Java (`JAVA_HOME`)</li><li>Android SDK (`ANDROID_HOME`)</li></ul> | WiFi drivers are specific to each system and cannot be scripted generically. Refer to the ASUS support website or Ubuntu community for specific instructions. |
| `setup-arch.sh` | <ul><li>Visual Studio Code</li><li>Java Development Kit (JDK) and Maven</li><li>Node.js</li><li>Android SDK</li><li>adb</li><li>scrcpy</li><li>Docker</li><li>OpenSSH Server</li></ul> | <ul><li>Java (`JAVA_HOME`)</li><li>Android SDK (`ANDROID_HOME`)</li></ul> | WiFi drivers are specific to each system and cannot be scripted generically. Refer to the Arch Linux documentation for specific instructions. |
| `test.sh` | <ul><li>Checks and tests the installation of various software packages</li></ul> | None | No special instructions. |