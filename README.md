# MaxMind GeoIP Database Updater TA for Splunk

## About UpdateMMDB TA for Splunk

|                           |                                                             |
| ------------------------- | ----------------------------------------------------------- |
| Author                    | Jacob Persinger                                             |
| App Version               | 1.0.0                                                       |
| App Build                 | 100                                                         |

UpdateMMDB is a technology addon for Splunk that updates the MaxMind GeoIP database via command; this also comes with a hidden scheduled report that executes this command.  This was an addon made for Splunk 7.1+ Enterpise on Linux and was tested on Splunk 7.1 and 7.2.  This can be modified/cloned/forked freely including configs and is capable of pulling other free/paid MMDBs compatible with Splunk.  Pull requests welcome.

## Scripts and binaries

This App provides the following scripts:

|                  |                                                                                                       |
| ---------------- | ----------------------------------------------------------------------------------------------------- |
| mmdb_update.py   | This python file calls the shell script below.                                                        |
| mmdb_update.sh   | This shell script pulls the GeoLite2 DB file and sets permissions for it to be used via limits.conf.  |

# Installation

- Drop in $SPLUNK_HOME/etc/apps folder as TA-UpdateMMDB
- Reboot

or

- git clone git@github.com:p-rs/Splunk_TA-UpdateMMDB.git TA-UpdateMMDB && tar czf TA-UpdateMMDB.tar.gz TA-UpdateMMDB
- Upload to your Splunk
- Reboot

## IMPORTANT AFTER INSTALLATION

From Splunks Website in limits.conf: http://docs.splunk.com/Documentation/Splunk/latest/Admin/Limitsconf#.5Biplocation.5D

```
db_path = <path>
* The absolute path to the GeoIP database in the MMDB format.
* The “db_path” setting does not support standard Splunk environment 
  variables such as SPLUNK_HOME.
* Default: The database that is included with the Splunk platform.
```

Remember to set your `db_path` in `limits.conf`, as well as your directory in `mmdb_update.sh` accordingly!

## Uninstallation

- Delete the TA-UpdateMMDB folder within your $SPLUNK_HOME/etc/apps folder
- Reboot

# Usage

- `| updatemmdb` in the search query to update manually, otherwise, it will update monthly automatically.

## Disclaimer

This repo is free to use under the MIT license. I do not condone any misuse of this application nor do I take responsibility for any damages this application may cause.  You are responsible for checking the code and any installation thereafter.

# Release notes

## Version 1.0.0

  - Initial code commit