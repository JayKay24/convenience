#!/usr/bin/env bash


goToSolidBook() {
  openSolidBook

  cd $PERSONAL_LEARNING/javascript/typescript/solid_architecture

  code .
}

goToReactTypescript() {
  cd $PERSONAL_LEARNING/javascript/react/react_typescript

  open $BOOKS_PATH/architecures/front-end/react/fullstack-react-with-typescript-book-r5-basic.epub

  code .
}

goToNodeJSAutomation() {
  openAutomatingWithNodeJS

  cd "$PERSONAL_LEARNING/javascript/nodeJS/automation"

  code .
}

goToMaxNode() {
  MAXIM_NODE_PATH="$PERSONAL_LEARNING/javascript/nodeJS/maximillian_node/node_ecommerce"

  cd $MAXIM_NODE_PATH

  open -a "MongoDB Compass"

  code .
}

goToAlgorithms() {
  ALGO_PATH=$PERSONAL_LEARNING/algorithms_and_data_structures/coding_challenges

  cd $ALGO_PATH

  open $BOOKS_PATH/computer_science/algorithms/grokking-algorithms-illustrated-programmers-curious.epub

  code .
}

goToStephMicroservices() {
  STEPH_GRIDER_MICROSERVICES=$PERSONAL_LEARNING/microservices/ticketing

  cd $STEPH_GRIDER_MICROSERVICES

  open -a "Postman"

  open -a "Docker"

  code .
}

goToDistributedSystemsWithNodeJs() {
  DISTR_SYS_PATH="$PERSONAL_LEARNING/javascript/nodeJS/distributed_systems_with_nodejs"

  cd $DISTR_SYS_PATH

  openDistributedSystemsWithNodeJs

  code .
}
