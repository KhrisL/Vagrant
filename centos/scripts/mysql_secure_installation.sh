#!/usr/bin/expect -f

spawn mysql_secure_installation

expect {Enter current password for root (enter for none):}

send "\r"

expect {Set root password? [Y/n] }

send "y\r"

expect {New password:}

send "vagrant\r"

expect {Re-enter new password:}

send "vagrant\r"

expect {Remove anonymous users? [Y/n] }

send "\r"

expect {Disallow root login remotely? [Y/n] }

send "\r"

expect {Remove test database and access to it? [Y/n] }

send "\r"

expect {Reload privilege tables now? [Y/n] }

send "\r"

expect eof
