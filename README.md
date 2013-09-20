# FileMaker Server + Open Directory #
## Single Machine Deployment ##

FileMaker Server can be setup to authenticate against Active Directory and Open Directory. For those already using a Microsoft Server as a domain controller setup is little more than flipping a switch, while those on Mac only networks have to do a little more.

FileMaker Server and OpenDirectory can be integrated on either a single machine or across multiple machines. If you are following FileMaker Server best practices, the Open Directory and FileMaker server should be on separate machines. The directions for either deployment are the same, except for on the single-server deployment you got through all the steps on a single machine.

Requirements:
* [Mac OS X Mountain Lion](https://itunes.apple.com/us/app/id537386512?mt=12) (other version may require a slightly different setup).
* [OS X Server](https://itunes.apple.com/us/app/id537441259?mt=12)
* [FileMaker Server](http://www.filemaker.com/products/filemaker-server/)

### Single Server Deployment ###
1. Install/Upgrade Mountain Lion, if needed
2. Install OS X Server
	* Purchase and download Mac OS X Server from the Mac App Store
	* Open your Applications folder, and double-click Server to begin setup. [Screenshot]
	* Step through Server setup wizard.
3. Setup SSL Certificate [Screenshot]
	* You can either use the existing self-signed certificate.
	* Or, you can use a third-party certificate, by clicking on the plus sign and generating a CSR for use with a truster SSL provider.
	

## Directory Server Setup ##
1. Purchase and Install Mountain Lion Server
2. Run Mountain Lion Server.
3. Once the initial setup of server is complete, set the SSL certificate. You can either use the built-in certificate, or generate a CSR (Certificate Signing Request) and purchase a certificate from a third party.
4. Enable Open Directory.
5. Setup Network Users and Groups

## FileMaker Server Setup
1. Install FileMaker Server (preferably on a different machine).
2. Run the deployment wizard.
3. Stop FileMaker Server, and run the latest updater.
4. Open the Admin console.
5. Go to Database Server under Configuration, click on **Security**, and choose **FileMaker and external server accounts** then click **Save**.
6. You will need to bind the system to Open Directory, open **System Preferences** and select **Users & Groups**
7. Unlock by clicking on the lock and entering your password.
8. Click on **Network Account Server** and enter the name of the directory server.
9. Reboot the machine.

## FileMaker File Setup ##
1. Go to File -> Manage -> Security
2. Click on **New** to create a new account.
3. Set *Account is authenticated via:* to **External Server**.
4. Enter an Open Directory Group.
5. Select a Privilege Set.
6. Repeat steps 2-5 for each group you want to have access.