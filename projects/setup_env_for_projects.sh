#!/usr/bin/env bash


goToSolidBook() {
  openSolidBook

  cd $PERSONAL_LEARNING/javascript/typescript/solid_architecture

  code .
}

goToReactTypescript() {
  setup=$1

  cd $PERSONAL_LEARNING/javascript/react/react_typescript

  if [[ -n $setup ]];
  then
    # open $BOOKS_PATH/architecures/front-end/react/fullstack-react-with-typescript-book-r5-basic.epub

    code .
  fi

  nvm use "10.23.2"
}

goToNodeJSAutomation() {
  setup=$1

  cd "$PERSONAL_LEARNING/javascript/nodeJS/automation"

  if [[ -n $setup ]];
  then
    openAutomatingWithNodeJS

    code .
  fi
}

goToMaxNode() {
  setup=$1
  MAXIM_NODE_PATH="$PERSONAL_LEARNING/javascript/nodeJS/maximillian_node/node_ecommerce"

  cd $MAXIM_NODE_PATH

  if [[ -n $setup ]];
  then
    open -a "MongoDB Compass"

    code .
  fi
}

goToAlgorithms() {
  setup=$1
  ALGO_PATH="$PERSONAL_LEARNING/algorithms_and_data_structures/coding_challenges"
  faang="https://www.udemy.com/course/master-the-coding-interview-big-tech-faang-interviews/learn"
  andrei_coding_interview="https://www.udemy.com/course/master-the-coding-interview-data-structures-algorithms/learn"
  colt_steel_algo="https://www.udemy.com/course/js-algorithms-and-data-structures-masterclass/learn/"
  leetcode="https://leetcode.com/"

  declare -a urls
  urls+=($faang $andrei_coding_interview $colt_steel_algo $leetcode)

  cd $ALGO_PATH

  nvm use "v14.15.0"

  if [[ -n $setup ]];
  then
    for url in "${urls[@]}";
    do
      open $url
    done

    code .
  fi
}

goToStephMicroservices() {
  STEPH_GRIDER_MICROSERVICES="$PERSONAL_LEARNING/microservices/ticketing"
  setup=$1
  jestUrl="https://flaviocopes.com/jest/"
  stephGriderUdemy="https://www.udemy.com/course/microservices-with-node-js-and-react/learn"

  declare -a urls
  urls+=($jestUrl $stephGriderUdemy)

  cd $STEPH_GRIDER_MICROSERVICES

  nvm use "v10.23.2"

  if [[ -n $setup ]];
  then
    open -a "Postman"

    open -a "DevDocs"

    open -a "Docker"

    sleep 3m

    for url in "${url[@]}";
    do
      open $url
    done

    code .

    skaffold dev
  fi
}

goToDistributedSystemsWithNodeJs() {
  setup=$1
  DISTR_SYS_PATH="$PERSONAL_LEARNING/javascript/nodeJS/distributed_sys_with_nodejs/distributed_systems_with_nodejs"

  cd $DISTR_SYS_PATH

  nvm use "v14.15.0"

  if [[ -n $setup ]];
  then
    openDistributedSystemsWithNodeJs

    code .
  fi
}
