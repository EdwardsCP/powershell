# Powershell Scripts
Just a place where I'm making random powershell scripts available for use.

BitLocker-Logging.ps1 is a quick tool to write BitLocker Status to a log file

SADPhishes.ps1 is a tool I'm working on to use Exchange 2016's Compliance Search to delete emails that have been identified as phishing

ShortURLChecker.ps1 is a tool for determining where a shortened URL (i.e. bit.ly, t.co, etc.) redirects to.

VaronisDisableUserDenySMB.ps1 is a modification of a script provided by Varonis for automatically responding to potential ransomware activity.

# SADPhishes.ps1 Basic info and Usage Screenshots
The screenshots below show an example of a workflow that can be taken through the SADPhishes script.  In this example...

...the user created a Compliance Search query using a Subject, Sender Address, and Date Range

...the user did not include an Attachment in the search

...the user searched against one 1 mailbox (instead of All mailboxes, or a group)

...the search returned 1 item

...the user chose to create and execute an In-Place eDiscovery Search based on the results of the Compliance Search

...the user launched the eDiscovery Search Results in their browser

...the user Deleted all of the items that were returned by the Compliance Search

...the user was returned to the top level Search Options Menu

You can see in the screenshots that there is additional functionality not shown in this example.  You can create and execute new Compliance Searches based on fewer criteria.  You can run a Pre-Built Suspicious Attachment Types Search (that looks for attachments with 39 different suspicious file extensions, like .jar, .vbs, .bat, etc).  You can supply SADPhishes with a text file that contains headers from a sample email, and it will attempt to parse the Sender, Subject, and Date from the headers in order to automatically build a query.  You can view and re-run Compliance Searches that already exist.

The SADPhishes tool doesn't really do anything that you couldn't do on your own by executing the right powershell commandlets, or even through the Exchange Administrative Center's GUI.  But it does (1) make it easy to very quickly execute a search based on whatever criteria you have identified, (2) enforce a standard naming convention for searches, (3) provide warnings and reminders of the search functionality it is built on top of, and (4) provide useful feedback right in the powershell console instead of a user needing to click through multiple GUI screens in EAC.

![SADPhishes1](/SADPhishes%20Screenshots/SADPhishes1.png)

![SADPhishes2](/SADPhishes%20Screenshots/SADPhishes2.png)

![SADPhishes3](/SADPhishes%20Screenshots/SADPhishes3.png)

![SADPhishes4](/SADPhishes%20Screenshots/SADPhishes4.png)

![SADPhishes5](/SADPhishes%20Screenshots/SADPhishes5.png)

![SADPhishes6](/SADPhishes%20Screenshots/SADPhishes6.png)

# SADPhishes.ps1 Flowchart
![SADPhishesFlowchart](/SADPhishes%20Screenshots/SADPhishesFlowchart.jpg)
