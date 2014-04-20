# Troubleshooting

**If you are getting an "invalid hostname" error, or are unable to connect to the Open Directory server using SSL:**
	
>Run the following command from terminal to check your configuration: ``` sudo changeip -checkhostname ```. The most common issue is that the domain lookup and reverse lookup (PTR record) do not match, you should contact your network administrator or internet provider.**

**If you are unable to login with OpenDirectory Credentials**

> On the FileMaker server, unbind and rebind to the OpenDirectory server in System Preferences -> Users & Groups -> Login Options.