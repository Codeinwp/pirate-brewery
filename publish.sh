#!/bin/bash

if ! grep -Fxq "/* Add dynamic URLs */" /var/www/html/wp-config.php
then
	sed -i "/\/\* That's all, stop editing! Happy blogging. \*\//a\/\* Add dynamic URLs \*\/\ndefine('WP_SITEURL', 'http:\/\/' . \$_SERVER['HTTP_HOST']);\ndefine('WP_HOME', 'http:\/\/' . \$_SERVER['HTTP_HOST']);\n" wp-config.php
fi
ngrok http 80