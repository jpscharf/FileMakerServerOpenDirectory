# FileMaker Server and Open Directory Integration #
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