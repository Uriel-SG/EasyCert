# EasyCert
*crt.sh written in bash to easy find certificates and subdomains*

![easy-Cert](https://github.com/user-attachments/assets/2f21f95b-e75f-440e-9e71-dd7858312790)

# 🎯 Features
- Automated certificates finder for a specified target
- Subdomains finder

# Usage

- For the tool to function correctly it is necessary to install the *jq*:
```bash
sudo apt install jq
```
- Download the tool:
```bash
git clone https://github.com/Uriel-SG/EasyCert.git
```
- Make the script executable
```bash
chmod +x crt.sh
```
- (Optional) If you want to install the tool
```bash
mv crt.sh /usr/local/bin/crt.sh
```
- Enjoy it
```bash
crt.sh example.org 
```

![crt](https://github.com/user-attachments/assets/3aea4499-d194-40ee-8820-5e1174f194de)
