convenience_folder="$HOME/Desktop/convenience"

alias goToMaxNode="source $convenience_folder/maxim_node/setup_workspace_for_maximillian_node.sh"
alias goToStephMicroservices="source $convenience_folder/stephgrider_microservices/setup_workspace_for_stephmicroservices.sh"
alias goToAlgorithms="source $convenience_folder/algorithms_and_ds/setup_workspace_for_algorithms_and_ds.sh"
alias goToBooks="cd $HOME/Downloads/books"
alias goToSolidBook="source $convenience_folder/solid_architecture/setup_solid_workspace.sh"

# my custom tools
source "$convenience_folder/tools/my_custom_tools.sh"

# my frequently-read books
source "$convenience_folder/booksToRead/books.sh"

# my custom env variables
export PERSONAL_LEARNING="${HOME}/Desktop/personal_learning"
export BOOKS_PATH="${HOME}/Downloads/books"
