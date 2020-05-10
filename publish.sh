#!/bin/bash

asciidoctor -a toc=left recettes.adoc
cp recettes.html /var/www/html/cuisine