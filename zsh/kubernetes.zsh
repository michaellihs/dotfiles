export KUBECONFIG=/Users/mimi/.kube/config

# takes a kubeconfig file and "attaches" it to the existing cluster configs in the $KUBECONFIG file
function mergekubeconfig() {
    new_config=${1:-}
    if [[ -z $new_config ]]; then
        echo "no config file provided - exiting"
        exit 1
    fi
    if [[ ! -f $new_config ]]; then
        echo "$new_config is not a file - exiting"
        exit 1
    fi
    if [[ -z $KUBECONFIG ]]; then
        echo "KUBECONFIG not set - exiting"
        exit 1
    fi

    cp "$KUBECONFIG" "$KUBECONFIG-bck-$(date +%s)"

    old_kubeconfig=$KUBECONFIG
    export KUBECONFIG="$KUBECONFIG":"$new_config"
    kubectl config view --flatten > "$old_kubeconfig"-tmp
    rm "$old_kubeconfig"
    mv "$old_kubeconfig"-tmp "$old_kubeconfig"
    chmod go-r "$old_kubeconfig"
    export KUBECONFIG="$old_kubeconfig"
}