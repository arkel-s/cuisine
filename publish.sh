#!/bin/bash

asciidoctor -a toc=left recettes.adoc \
&& mv recettes.html /var/www/html/cuisine \
&& echo "recettes.html copiées dans /var/www/html/cuisine"
