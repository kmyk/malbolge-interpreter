#!/bin/bash
set -o errexit    # -e: If not interactive, exit immediately if any untested command fails.
cd "$(git rev-parse --show-toplevel)"
[ "$(cat tests/helloworld.mal | python3 a.py xlat1)" = "jpp<ppppp<pppp<<pp<ppp<pppp<ppppp<pp<ioooj/ojji</oiivoooi<ojvpoj/pvojj<j/o*jov/<ojjj*o/jj/oo/oooooopp<pppp<pppp<pp<v" ]
[ "$(cat tests/helloworld.mal | python3 a.py xlat1 | python3 a.py xlat1 -d)" = "$(cat tests/helloworld.mal)" ]
[ "$(python3 a.py execute tests/helloworld.mal)" = "Hello, world." ]
