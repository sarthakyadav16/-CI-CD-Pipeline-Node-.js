 #!/bin/bash
cd /home/ec2-user/app
npm install
pkill node || true
node app.js &
