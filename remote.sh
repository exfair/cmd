#@title INSTALL YOUR VPS BY GOD MINER
#@markdown  It takes 4-5 minutes for installation
 
import os
import subprocess
 
#@markdown  Visit http://remotedesktop.google.com/headless and Copy the command after authentication
 
CRP = "DISPLAY= /opt/google/chrome-remote-desktop/start-host --code=\"4/0AfJohXmA6dVmwFSWnafdByPkFJEddjJKwkJWK-zlFqV4tm3NUC8beB2NyaLoB2Lph1TbSg\" --redirect-url=\"https://remotedesktop.google.com/_/oauthredirect\" --name=$(hostname)" #@param {type:"string"}
 
#@markdown Enter a pin more or equal to 6 digits
Pin =  123456#@param {type: "integer"}
 
 
class CRD:
    def __init__(self):
        os.system("apt update")
        self.installCRD()
        self.installDesktopEnvironment()
        self.installGoogleChorme()
        self.finish()
 
    @staticmethod
    def installCRD():
        print("SABIRLI OL %25")
        subprocess.run(['wget', 'https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb'], stdout=subprocess.PIPE)
        subprocess.run(['dpkg', '--install', 'chrome-remote-desktop_current_amd64.deb'], stdout=subprocess.PIPE)
        subprocess.run(['apt', 'install', '--assume-yes', '--fix-broken'], stdout=subprocess.PIPE)
 
    @staticmethod
    def installDesktopEnvironment():
        print("AZ DAHA DAYAN %50")
        os.system("export DEBIAN_FRONTEND=noninteractive")
        os.system("apt install --assume-yes xfce4 desktop-base xfce4-terminal")
        os.system("bash -c 'echo \"exec /etc/X11/Xsession /usr/bin/xfce4-session\" > /etc/chrome-remote-desktop-session'")
        os.system("apt remove --assume-yes gnome-terminal")
        os.system("apt install --assume-yes xscreensaver")
        os.system("systemctl disable lightdm.service")
 
    @staticmethod
    def installGoogleChorme():
        print("BAK SIK DISINI %75")
        subprocess.run(["wget", "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"], stdout=subprocess.PIPE)
        subprocess.run(["dpkg", "--install", "google-chrome-stable_current_amd64.deb"], stdout=subprocess.PIPE)
        subprocess.run(['apt', 'install', '--assume-yes', '--fix-broken'], stdout=subprocess.PIPE)
 
    @staticmethod
    def finish():
        print("BITTI 100%")
        os.system(f"adduser {username} chrome-remote-desktop")
        command = f"{CRP} --pin={Pin}"
        os.system(f"su - {username} -c '{command}'")
        os.system("service chrome-remote-desktop start")
        print("Finished Succesfully")
 
 
try:
    if username:
        if CRP == "":
            print("Please enter authcode from the given link")
        elif len(str(Pin)) < 6:
            print("Enter a pin more or equal to 6 digits")
        else:
            CRD()
except NameError as e:
    print("username variable not found")
    print("Create a User First")
