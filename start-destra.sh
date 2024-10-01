tmux new-session -d -s storage-node

# Run the storage node inside the tmux session
tmux send-keys -t storage-node "npm run destra-storage-node" C-m

echo "Destra Storage Node setup completed and running in tmux session 'storage-node'."


# while [ true ]; do 
#     if [ -z $(ps aux | grep "storage-node") ]; then
#         echo "Storage Node died, resurrecting..."
#         "do something" >/dev/null 2>/dev/null &
#         disown $!
#     fi

#     sleep 3
# done 