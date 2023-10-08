activateAgent(){
    eval "$(ssh-agent -s)"
}

getAgentProcess(){
    echo $(ps aux | grep ssh-agent)
}

isAgentActive(){
    [ -n "$(getAgentProcess)" ]
}

if ! isAgentActive; then
    activateAgent
else
    echo "Agent is already active"
fi