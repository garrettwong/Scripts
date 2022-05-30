#!/bin/bash

echo 'the black cat was chased by the brown dog.\n
the black cat was not chased by the brown dog' | sed -e '/not/s/black/white/g' 
