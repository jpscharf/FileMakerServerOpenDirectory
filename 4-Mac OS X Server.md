# Mac OS X Server
>**OpenDirectory Server** ***(required)***

>> ***The Open Directory server must have a static IP and a resolvable hostname.***

>**FileMaker Server** ***(optional)***

1.	Install Mountain Lion and update to the latest version.


2.	If you are going to be using this machine as an Open Directory server, you will need to assign it a static IP and make sure it is using a reachable domain name.


3.	Install OS X Server
	* Purchase and download Mac OS X Server from the Mac App Store
	* Open your Applications folder, and double-click Server to begin setup.  
		
    ![Screenshot 1.1 - Mac OS X Server - Setup Server ](https://cdn.intergrated.net/FileMaker-OpenDirectory/1.1 - Mac OS X Server - Setup Server.png)   
    * On the second page of the Server setup wizard, "Accessing your Server" you will be given three options. If the server is not going to be accessible from outside the local network, choose "Local Network"  &#9312;.
    
    ![1.2 - Mac OS X Server - Network Type](https://cdn.intergrated.net/FileMaker-OpenDirectory/1.2 - Mac OS X Server - Network Type.png)
	* Step through Server setup wizard:
			-	On the section "Connecting to your Server" make sure the "Network Address" &#9312; is set to a static IP and "Host Name" &#9313; is set to the domain that resolves to the static IP your configured.
	
	![1.3 - Mac OS X Server - Host Name](https://cdn.intergrated.net/FileMaker-OpenDirectory/1.3 - Mac OS X Server - Host Name.png)
	