#!/usr/bin/expect
set timeout 30
spawn ssh root@192.168.0.22
expect {
"yes/no" { send "yes\r"; exp_continue }
"password:" { send "root\r" }
}
interact
