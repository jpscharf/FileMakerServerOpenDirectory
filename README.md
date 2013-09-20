# FileMaker Server + Open Directory #

FileMaker Pro Server can be setup to authenticate against Active Directory and Open Directory. For those already using a Microsoft Server as a domain controller setup is little more than flipping a switch, while those on Mac only networks have to do a little more.

FileMaker Pro Server and OpenDirectory can be integrated on either a single machine or across multiple machines. If you are following FileMaker Server best practices, Open Directory and FileMaker Pro Server should be installed on separate machines. The directions for either deployment are the same, except for on the single-machine deployment do all the steps on a single machine. *This tutorial assumes a two-machine deployment.*

### Caveat ###
FileMaker Pro Server ***must*** be installed on a Mac, as Windows based PCs are not able to bind to a OpenDirectory domain. Windows clients will still be able to authenticate, as authentication is processed through FileMaker Server Pro.
While this setup may be used in a mixed environment, Windows based PCs will not be able to bind to the OpenDirectory Controller, though FileMaker will still be able to use it for authentication.

### Requirements ###
* [Mac OS X Mountain Lion](https://itunes.apple.com/us/app/id537386512?mt=12) (other versions may require a slightly different setup).
* [OS X Server](https://itunes.apple.com/us/app/id537441259?mt=12)
* [FileMaker Pro Server 12](http://www.filemaker.com/products/filemaker-server/)

## Mac OS X Server^1 ##
>**OpenDirectory Server** ***(required)***

>**FileMaker Pro Server** ***(optional)***

1. Install Mountain Lion and update to the latest version. 
2. Install OS X Server
	* Purchase and download Mac OS X Server from the Mac App Store
	* Open your Applications folder, and double-click Server to begin setup. [Screenshot: Setup-Server.png]	
	* Step through Server setup wizard.		
3. Setup SSL Certificate [Screenshot: Setup-SSL.png]
	* Use the existing self-signed certificate.	
		- ***OR***
	* Use a third-party certificate, by clicking on the plus sign and generating a CSR for use with a truster SSL provider  – [OS X Server: Configuring clients to use SSL for Open Directory binding] (http://support.apple.com/kb/HT4183)
	

## OpenDirectory Setup ##
1. Purchase and Install Mountain Lion Server
2. Run Mountain Lion Server.
3. Once the initial setup of server is complete, set the SSL certificate. You can either use the built-in certificate, or generate a CSR (Certificate Signing Request) and purchase a certificate from a third party.
4. Enable Open Directory.
5. Setup Network Users and Groups

## FileMaker Pro Server Setup
1. Install FileMaker Server (preferably on a different machine).
2. Run the deployment wizard.
3. Stop FileMaker Server, and update to the latest version.
4. Open the Admin console.
5. Go to Database Server under Configuration, click on **Security**, and choose **FileMaker and external server accounts** then click **Save**.
6. You will need to bind the system to Open Directory, open **System Preferences** and select **Users & Groups**
7. Unlock by clicking on the lock and entering your password.
8. Click on **Network Account Server** and enter the name of the directory server.
9. Reboot the machine.

## FileMaker Pro File Setup^2 ##

1. Go to File -> Manage -> Security
2. Click on **New** to create a new account.
3. Set *Account is authenticated via:* to **External Server**.
4. Enter an Open Directory Group.
5. Select a Privilege Set.
6. Repeat steps 2-5 for each group you want to have access.

---

1. *Recommended:* Install Mac OS X Server on all the machines used, though it is optional for the FileMaker Pro Server machine.
2. ***Required:*** Complete these steps for each FileMaker Pro database you want to authenticate through OpenDirectory.