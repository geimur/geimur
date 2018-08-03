# Guide to create a clickable solution to temporarily change the IPv4 DNS server for a Windows Computer.

This is the quickest solution I made so far, it takes a minute or 3 to set up, but once it's done it works pretty convenient.

1. Fire up Command Prompt (cmd.exe)
2. Find the name of your (wireless) network, by typing **`ipconfig`** or another preferred method.
3. Copy the .bat-file **`on.bat`** and in the file replace
    NETWORK_NAME with the name found in the previous step.
    DNS-SERVER with the local ip address of your pihole.
4. Copy the .vbs-file **`on.vbs`** and in the file replace
    PATH with the directory where your just created **`on.bat`** is located.
5. Do the same for **`off.bat`** and **`off.vbs`**.
6. Copy the .ico-files to the same folder.
7. Create a new Windows task (**`ctrl+R`**, type **`taskschd.msc`**, click **`OK`**)
8. Click **`Create Task`** (left of the screen)
9. In this window click on the **`General`** tab, give it a name (without spaces) for example **`NEWTASK`**, click on **`turn on run with highest privileges`** - you should give it a more descriptive name, but this is just to explain the steps needed to be taken.
10. Click on the **`Actions`** tab, click **`New`**.
11. Locate the previously created **`.vbs`** file, and press **`OK`**.
12. Navigate to the directory where the clickable solution needs to be placed, right click, **`Shortcut`**, **`new`**.
13. In the location field **`schtasks /run /tn "NEWTASK"`** - replace with the correct name you gave it in step 9.
14. Give the short cut a name, and you are done.
15. Now repeat steps 7 to 14, and optionally give the sortcuts a nice image to visually see what it does (green to turn the connection to the pi on, red vice versa).
