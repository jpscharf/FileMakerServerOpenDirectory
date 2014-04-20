# FileMaker Pro Database Configuration

> To use Open Directory for authentication, the database must be hosted on a FileMaker Server configured for Open Directory.

> Complete the following steps for each FileMaker Pro database you want to authenticate through OpenDirectory.

1. Open database.
2. Go to the menu File -> Manage -> Security

	![4.1 - FileMaker Pro Database - Security](https://cdn.intergrated.net/FileMaker-OpenDirectory/4.1 - FileMaker Pro Database - Security.png)
	
3. Add Open Directory Group Account
	* Click "New…" &#9312;
	* Select "External Server" from the "Account is authenticated via" menu &#9313;.
	* For "Group Name" &#9314;, enter the Open Directory Group you would like to use for authentication.
	* Select a "Privilege Set" &#9315;
	* Click OK &#9316;
	
	![4.2 - FileMaker Pro Database - Add Group](https://cdn.intergrated.net/FileMaker-OpenDirectory/4.2 - FileMaker Pro Database - Add Group.png)

### Authentication Order ###

**The order matters, if a user has a FileMaker account and an OpenDirectory account, using the same username, the first account/group that accepts the provided username and password will be the one used.**

* Legacy local user "localUser" &#9312; [Full Access]
* New OD Group "ODUserGroup" &#9313; [Edit Only]
* "localUser" logs in with his old local password and is given [Full Access] even though he is in the group "ODUserGroup" and was expected to have [Edit Only] access.

	![4.3 - FileMaker Pro Database - Authentication Order](https://cdn.intergrated.net/FileMaker-OpenDirectory/4.3 - FileMaker Pro Database - Authentication Order.png)