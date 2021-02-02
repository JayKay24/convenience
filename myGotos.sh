# my custom env variables
export PERSONAL_LEARNING="$HOME/Desktop/personal_learning"
export BOOKS_PATH="$HOME/Downloads/books"
export CONVENIENCE_DIR="$HOME/Desktop/convenience"
export DOWNLOADS="$HOME/Downloads"

# my custom aliases for frequently visited projects
alias goToBooks="cd $HOME/Downloads/books"
alias goToProgrammersIdeaBook="source $CONVENIENCE_DIR/programmers_idea_book/setup_workspace_for_idea_book.sh"
alias setUpProgrammersIdeaBookEnvironment="source $CONVENIENCE_DIR/programmers_idea_book/tools/config-environment.sh"

# my custom tools
source "$CONVENIENCE_DIR/tools/my_custom_tools.sh"

# my frequently-read books
source "$CONVENIENCE_DIR/booksToRead/books.sh"

# frequently visited projects
source "$CONVENIENCE_DIR/projects/setup_env_for_projects.sh"

