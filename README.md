These scripts rely on launchd in Os X.

The default configuration is to track "~/Google Drive". Change the path in gdriveupdate.plist and update.sh.

After running ./startupdate.sh once. You can add the launchctl command to ~/.launchd.conf like so:
launchctl load ~/dev/googledrivehist/gdriveupdate.plist
