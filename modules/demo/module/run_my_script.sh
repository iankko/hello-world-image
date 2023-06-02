#!/usr/bin/env bash
set -e

echo -e "#!/usr/bin/env bash\necho Hello world" > /tmp/hello_world.sh
chmod a+x /tmp/hello_world.sh
