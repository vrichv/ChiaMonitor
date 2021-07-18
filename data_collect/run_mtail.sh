# ~/.chia/mainnet/log/ is where your Chia logs saved.
# Replace them if they are different on your host
CHIA_BIN=chia
MTAIL_BIN=mtail
MTAIL_CONF=~/bin/mtail/
LOG_FILE=/tmp/farmer_summary.log
nohup watch -n 30 "$CHIA_BIN farm summary > $LOG_FILE" &
nohup $MTAIL_BIN --progs $MTAIL_CONF --logs ~/.chia/mainnet/log/debug.log --logs $LOG_FILE --poll_interval 3000ms &
