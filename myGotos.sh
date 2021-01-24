# my custom env variables
export PERSONAL_LEARNING="$HOME/Desktop/personal_learning"
export BOOKS_PATH="$HOME/Downloads/books"
export CONVENIENCE_DIR="$HOME/Desktop/convenience"
export DOWNLOADS="$HOME/Downloads"

# my custom aliases for frequently visited projects
alias goToMaxNode="source $CONVENIENCE_DIR/maxim_node/setup_workspace_for_maximillian_node.sh"
alias goToStephMicroservices="source $CONVENIENCE_DIR/stephgrider_microservices/setup_workspace_for_stephmicroservices.sh"
alias goToAlgorithms="source $CONVENIENCE_DIR/algorithms_and_ds/setup_workspace_for_algorithms_and_ds.sh"
alias goToBooks="cd $HOME/Downloads/books"
alias goToSolidBook="source $CONVENIENCE_DIR/solid_architecture/setup_solid_workspace.sh"
alias goToNodeJSAutomation="source $CONVENIENCE_DIR/node_automation/automation.sh"
alias goToReactTypescript="source $CONVENIENCE_DIR/react_typescript/setup_workspace_for_react_and_typescript.sh"
alias goToProgrammersIdeaBook="source $CONVENIENCE_DIR/programmers_idea_book/setup_workspace_for_idea_book.sh"

# my custom tools
source "$CONVENIENCE_DIR/tools/my_custom_tools.sh"

# my frequently-read books
source "$CONVENIENCE_DIR/booksToRead/books.sh"

