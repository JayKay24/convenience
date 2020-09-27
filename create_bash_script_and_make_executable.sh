#!/usr/bin/env bash

touch $1
chmod +x $1
printf "#!/usr/bin/env bash\n\n\n" > $1
vim $1

