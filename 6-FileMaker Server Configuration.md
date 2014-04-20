# FileMaker Server Configuration

### Bind to Open Directory ###

> These steps only apply if the FileMaker and Open Directory servers are on separate machines.

1. Open System Preferences, and select "Users & Groups".

2. Click on "Login Options" &#9312;, then click on the lock &#9313;, and enter an administrator's credentials.

	![3.1 - FileMaker Server - System Preferences](https://cdn.intergrated.net/FileMaker-OpenDirectory/3.1 - FileMaker Server - System Preferences.png)

3. Click on "Join…" &#9312;, then click on the Server drop-down &#9313;. You should see your Open Directory server in the list, if you do not, enter the fully qualified domain (FQDN). Press enter to bind to the directory server.

	![3.2 - FileMaker Server - Bind to Directory](https://cdn.intergrated.net/FileMaker-OpenDirectory/3.2 - FileMaker Server - Bind to Directory.png)

### Configure FileMaker Server ###

1. Open the FileMaker Server Admin Console

2. Click on "Database Server" &#9312;, choose "Security" &#9313;, change "Client Authentication" to "FileMaker and external server accounts" &#9314;, then click Save &#9315;

	![3.3 - FileMaker Server - Admin Console - Security](https://cdn.intergrated.net/FileMaker-OpenDirectory/3.3 - FileMaker Server - Admin Console - Security.png)
	
### Optional FileMaker Server Configuration ###

1. Open Directory authentication may also be used to configure access to the FileMaker Server Admin Console. Click on "Administrator Groups" &#9312; click Add &#9313;. Configure the group.
	* Click on "Administrator Groups" &#9312;
	* Click Add &#9313;
	* Enter "Group Name" &#9314;
	* Enter "Group Password" &#9315; (required, but unused)
	* Check "Use external group" &#9316;
	* Enter Open Directory Group &#9317; to use for authentication.
	* Click "Test External Group" &#9318;
	* Click "Select Folder" &#9319; and choose a folder, if you would like to limit access to a specific folder.
	* Click "Edit Privileges" &#9320;, if you would allow privileges beyond the default: View Databases, Send Messages and Disconnect Clients.
	* Click Save &#9321;
	
	![3.4 - FileMaker Server - Admin Console - Admin Groups](https://cdn.intergrated.net/FileMaker-OpenDirectory/3.4 - FileMaker Server - Admin Console - Admin Groups.png)
	
2. Open Directory authentication may also be used to provide full access to the admin console.
	* Click on "General Setting" &#9312;
	* Check "Use external group" &#9313;
	* Enter Open Directory Group &#9314; to use for authentication.
	* Click "Test External Group" &#9315;
	* Click Save &#9316;