#!/bin/sh
SERVICE='python ./run_p2pool.py --net myriadcoinqubit'

if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
        screen  -m -S screenmyr python ./run_p2pool.py --net myriadcoinqubit --give-author 0 --disable-upnp -f 1 -a MVAP7SNQqDPhiL9tzSBxswWRBkFJskiycx

	wait
fi

