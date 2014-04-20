# FileMaker Server + Open Directory #

> https://github.com/jpscharf/FileMakerServerOpenDirectory

FileMaker Server can be setup to authenticate against Active Directory and Open Directory. For those already using a Microsoft Server as a domain controller setup is little more than flipping a switch, while those on Mac only networks have to do a little more.

FileMaker Server and Open Directory can be integrated on either a single machine or across multiple machines. If you are following FileMaker Server best practices, Open Directory and FileMaker Server should be installed on separate machines. The directions for either deployment are the same, except for on the single-machine deployment do all the steps on a single machine. *This tutorial assumes a two-machine deployment.*

**Recommended:** Install Mac OS X Server on all the machines used, though it is optional for the FileMaker Server machine.