# FileMaker Server + Open Directory #

> https://github.com/jpscharf/FileMakerServerOpenDirectory

FileMaker Pro Server can be setup to authenticate against Active Directory and Open Directory. For those already using a Microsoft Server as a domain controller setup is little more than flipping a switch, while those on Mac only networks have to do a little more.

FileMaker Pro Server and Open Directory can be integrated on either a single machine or across multiple machines. If you are following FileMaker Server best practices, Open Directory and FileMaker Pro Server should be installed on separate machines. The directions for either deployment are the same, except for on the single-machine deployment do all the steps on a single machine. *This tutorial assumes a two-machine deployment.*

### Caveat ###
FileMaker Pro Server ***must*** be installed on a Mac, as Windows based PCs are not able to bind to an Open Directory domain. Windows clients will still be able to authenticate, as authentication is processed through FileMaker Server Pro.

### Requirements ###
* [Mac OS X Mountain Lion](https://itunes.apple.com/us/app/id537386512?mt=12) (other versions may require a slightly different setup).
* [OS X Server](https://itunes.apple.com/us/app/id537441259?mt=12)
* [FileMaker Pro Server 12](http://www.filemaker.com/products/filemaker-server/)

## 1. Mac OS X Server^1 ##
>**OpenDirectory Server** ***(required)***

> ***— The Open Directory server must have a static IP and a resolvable hostname.***

>**FileMaker Pro Server** ***(optional)***

1. Install Mountain Lion and update to the latest version. 
2. If you are going to be using this machine as a Open Directory server, you will need to assign it a static IP and make sure it is using a reachable domain name.
3. Install OS X Server
	* Purchase and download Mac OS X Server from the Mac App Store
	* Open your Applications folder, and double-click Server to begin setup.  
    		![Screenshot 1.1 - Mac OS X Server - Setup Server ](http://files.fmtricks.com/FileMaker-OpenDirectory/1.1 - Mac OS X Server - Setup Server.png) 	
		* Step through Server setup wizard:
			
			On the section "Connecting to your Server" make sure the "Network Address" (1) is set to a static IP and "Host Name" (2) is set to the domain that resolves to the static IP your configured.
			![Screenshot 1.2 - Mac OS X Server - Network ](http://files.fmtricks.com/FileMaker-OpenDirectory/1.2 - Mac OS X Server - Network.png)
	
## Open Directory Configuration ##
> ***— Static IP (required)***

> ***— Resolvable DNS Name (required)***

1. Open the "Server" application.
2. Choose "Open Directory" under "SERVICES" section.
![Screenshot 2.1 - Open Directory Setup - Select Open Directory](http://files.fmtricks.com/FileMaker-OpenDirectory/2.1 - Open Directory Setup - Select Open Directory.png)
3. Start the Open Directory setup wizard by clicking on the OFF/ON toggle.
4. Choose "Create a new Open Directory domain", and click next.
5. Enter the information for the Directory Administrator account, click next.
6. Enter the organization name and the email address of the server administrator, click next.
7. Click on "Set Up" to configure and enable Open Directory.
8. Setup SSL Certificate, make sure that "Secure services using:" is set to your SSL certificate and **NOT** "Custom configuration". ![Screenshot 2.2 - Mac OS X Server - Setup SSL ](http://files.fmtricks.com/FileMaker-OpenDirectory/2.2 - Mac OS X Server - Setup SSL.png)
	* Use the existing self-signed certificate.	
		- ***OR***
	* Use a third-party certificate, by clicking on the plus sign and generating a CSR for use with a truster SSL provider  – [OS X Server: Configuring clients to use SSL for Open Directory binding] (http://support.apple.com/kb/HT4183)
	
### Open Directory Users & Groups ###

Now that you have a working Open Directory server, you will need to setup users and groups to use for authentication.

#### Groups ####

1. Click on "Groups" (1) under "ACCOUNTS" and then choose "Local Network Groups" from the drop down menu (2).
![Screenshot 2.3 - Open Directory Setup - Groups](http://files.fmtricks.com/FileMaker-OpenDirectory/2.3 - Open Directory Setup - Groups.png)
2. Click on the plus "+" button to create groups to control access to FileMaker databases.


#### Users ####
1. Click on "Users" (1) under "ACCOUNTS" and then choose "Local Network Users" from the drop down menu (2).
![Screenshot 2.4 - Open Directory Setup - Users](http://files.fmtricks.com/FileMaker-OpenDirectory/2.4 - Open Directory Setup - Users.png)
2. Click on the plus "+" button to create a user, enter the users information and click "Done".
3. Now right-click the newly created user, and select "Edit User…"
4. You can assign groups to a user by click in the plus "+" button (1), and then begin typing in the blank Groups line to get the option to browse (2), which will open the Groups floating window. To add groups to the user, just drag the group name into the user Groups list.



--
--
## FileMaker Pro Server Setup
1. Install FileMaker Server (preferably on a different machine).
2. Run the deployment wizard.
3. Stop FileMaker Server, and update to the latest version.
4. Open the Admin console.
5. Go to Database Server under Configuration, click on **Security**, and choose **FileMaker and external server accounts** then click **Save**.
6. You will need to bind the system to Open Directory, open **System Preferences** and select **Users & Groups**
7. Unlock by clicking on the lock and entering your password.
8. Click on **Network Account Server** and enter the name of the directory server.

10. Add Access to admin console.

## FileMaker Pro File Setup^2 ##

1. Go to File -> Manage -> Security
2. Click on **New** to create a new account.
3. Set *Account is authenticated via:* to **External Server**.
4. Enter an Open Directory Group.
5. Select a Privilege Set.
6. Repeat steps 2-5 for each group you want to have access.

--

1. *Recommended:* Install Mac OS X Server on all the machines used, though it is optional for the FileMaker Pro Server machine.
2. ***Required:*** Complete these steps for each FileMaker Pro database you want to authenticate through OpenDirectory.