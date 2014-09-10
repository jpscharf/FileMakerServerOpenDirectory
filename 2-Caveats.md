# Caveats #

**Setup may require an advanced understanding of networking and domain name configuration.**

FileMaker Server ***must*** be installed on a Mac, as Windows based PCs are not able to bind to an Open Directory domain. Windows clients will still be able to authenticate, as authentication is processed through FileMaker Server.

Each FileMaker database ***must have*** a local account with [Full Access], as a Open Directory user with [Full Access] will not be able change security settings.
