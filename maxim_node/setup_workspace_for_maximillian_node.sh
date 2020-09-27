#!/usr/bin/env bash

export MAXIM_NODE_PATH="${HOME}/Desktop/personal_learning/javascript/nodeJS/maximillian_node/nodejs-complete-guide"
export APPLESCRIPT=$(pwd)/iterm_open_bottom_pane.applescript

goToMax() {
	cd $MAXIM_NODE_PATH
}

export goToMax=goToMax

goToMax

#.${APPLESCRIPT}

#goToMax

