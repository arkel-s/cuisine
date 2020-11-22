#!/bin/bash

asciidoctor -a toc=left recettes.adoc \
&& sed -i  '/<\/h1>/a <a href="https://github.com/arkel-s/cuisine"><img loading="lazy" width="149" height="149" src="https://github.blog/wp-content/uploads/2008/12/forkme_left_red_aa0000.png?resize=149%2C149" class="attachment-full size-full" alt="Fork me on GitHub" data-recalc-dims="1"></a>' recettes.html \
&& sed -i 's/Table of Contents/Menu/' recettes.html \
&& scp recettes.html ovh:/var/www/html/cuisine \
&& echo "recettes.html copiées dans /var/www/html/cuisine"
