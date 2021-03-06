# determine repository tooling
if ( $null -ne $env:CI_DEBUG ) { set-PSdebug -trace 1 }

$exit_val = 0

if ( ! $env:DIST_TOOLING -and (Test-Path "build.PL") ) { $env:DIST_TOOLING = "build" }
if ( ! $env:DIST_TOOLING -and (Test-Path "Makefile.PL") ) { $env:DIST_TOOLING = "make" }

set-PSdebug -off
exit $exit_val
