#!/bin/bash
set -euo pipefail

\curl -sL https://install.perlbrew.pl | bash

echo source $HOME/perl5/perlbrew/etc/bashrc
echo perlbrew available

most_recent=$(perlbrew available |grep perl- |head -n1 |awk '{print $NF;}')
echo perlbrew install $most_recent
echo perlbrew switch  $most_recent
echo cpanm --notest App::scan_prereqs_cpanfile
echo "scan-prereqs-cpanfile > rescuetime-highlights.cpanfile"
echo cpanm --installdeps .
