#!/bin/bash

plist_path=/Library/LaunchDaemons/com.mac.set.sleep.never.plist
cat > $plist_path << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>com.mac.set.sleep.never</string>
	<key>ProgramArguments</key>
	<array>
		<string>/usr/sbin/systemsetup</string>
		<string>-setdisplaysleep</string>
		<string>Never</string>
	</array>
	<key>StartInterval</key>
	<integer>600</integer>
	<key>UserName</key>
	<string>root</string>
</dict>
</plist>
EOF

chown root:wheel $plist_path
