#!/bin/zsh

alias wwwdata="vagrant ssh -c wwwdata"
alias sudo-web="vagrant ssh web -c 'sudo su -'"
alias sudo-proxy="vagrant ssh proxy -c 'sudo su -'"
alias sudo-solr="vagrant ssh solr -c 'sudo su -'"
alias sudo-db="vagrant ssh db -c 'sudo su -'"
alias syslog-web="vagrant ssh web -c 'tail -f /var/log/syslog'"

function _vagrantFlow() {
    vagrant ssh web -c "cd /var/www/\$(hostname | tail -c +5)/releases/current ; sudo -u www-data -H ./flow $*" -- -q
}
alias pflow="_vagrantFlow"
