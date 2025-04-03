#!/bin/bash

# Define Kubernetes Aliases
echo "Setting up kubectl aliases..."

# General
alias k='kubectl'
alias kaf='kubectl apply -f'
alias kdel='kubectl delete'
alias kex='kubectl exec -it'
alias kl='kubectl logs'
alias klf='kubectl logs -f'
alias kdesc='kubectl describe'

# Get commands
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgpa='kubectl get pods --all-namespaces'
alias kgs='kubectl get svc'
alias kgsa='kubectl get sa'
alias kgcm='kubectl get configmap'
alias kgsec='kubectl get secret'
alias kging='kubectl get ingress'
alias kgns='kubectl get ns'
alias kgno='kubectl get nodes'
alias kgds='kubectl get daemonset'
alias kgdp='kubectl get deployment'
alias kgsts='kubectl get statefulset'
alias kgcj='kubectl get cronjob'
alias kgj='kubectl get job'
alias kgpv='kubectl get pv'
alias kgpvc='kubectl get pvc'
alias kgall='kubectl get all'
alias kgallns='kubectl get all --all-namespaces'

# Describe commands
alias kdp='kubectl describe pod'
alias kds='kubectl describe svc'
alias kdcm='kubectl describe configmap'
alias kdsec='kubectl describe secret'
alias kdno='kubectl describe node'
alias kddep='kubectl describe deployment'
alias kdall='kubectl describe all'

# Apply & Delete
alias kaf='kubectl apply -f'
alias kdelf='kubectl delete -f'

# Logs & Exec
alias ke='kubectl exec -it'
alias kl='kubectl logs'
alias klf='kubectl logs -f'

# Context & Namespace
alias kctx='kubectl config use-context'
alias kcn='kubectl config set-context --current --namespace'

# Scaling & Rollouts
alias krs='kubectl rollout status'
alias kru='kubectl rollout undo'
alias ksd='kubectl scale deployment'
alias ksp='kubectl scale pod'

# Port Forwarding
alias kpf='kubectl port-forward'

# Editing Resources
alias kevc='kubectl edit configmap'
alias kevp='kubectl edit pod'
alias kevd='kubectl edit deployment'

# Troubleshooting
alias ktop='kubectl top pod'
alias ktopn='kubectl top node'

# Delete all pods (force restart)
alias kdrp='kubectl delete pod --all'

# Persist the aliases
echo "Persisting aliases to ~/.bashrc and ~/.zshrc..."

if ! grep -q "source ~/.kubectl_aliases" ~/.bashrc; then
    echo "source ~/.kubectl_aliases" >> ~/.bashrc
fi

if ! grep -q "source ~/.kubectl_aliases" ~/.zshrc; then
    echo "source ~/.kubectl_aliases" >> ~/.zshrc
fi

# Save the aliases
alias > ~/.kubectl_aliases

echo "Aliases set! Run 'source ~/.bashrc' or 'source ~/.zshrc' to apply."
