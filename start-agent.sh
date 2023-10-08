activateAgent(){
    eval "$(ssh-agent -s)"
}

getAgentPid(){
    echo "$SSH_AGENT_PID"
}

isAgentActive(){
    [ -n "$(getAgentPid)" ]
}

if ! isAgentActive; then
    activateAgent
else
    echo "Agent is already active"
fi