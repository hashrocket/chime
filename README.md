Chime
=====

Chimes in the Chicago office when someone comes in the front door

Any http request to your mac on port 9292 will cause the arduino to put out +5 on pin 2 for 3 seconds.

## Installation

1. Open `chime.ino` in the [Arduino IDE][arduino-ide] and upload it to your 'duino.

1. bundle

1. symlink the launchd plist into your `~/Library/LaunchAgents`. The launch agent assumes your repo is in /Users/dev/hashrocket/chime, and it logs to `/tmp/chime-server.{stdout,stderr}`

        cd ~/Library/LaunchAgents
        ln -s ~/hashrocket/chime/hashrocket.chime.plist hashrocket.chime.plist
        launchctl load hashrocket.chime.plist


[arduino-ide]: http:http://arduino.cc/en/Main/Software
