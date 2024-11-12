#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path to create vault> <dirname of periodic subdirs + notes>"
    echo "$0 ./vault base # will create:"
    echo "."
    echo " |-vault"
    echo "   |-base"
    echo "   |---daily"
    echo "   |---weekly"
    echo "   |---monthly"
    echo "   |---quarterly"
    echo "   |---yearly"
    echo "   |-templates"
    echo "   |---Default Template.md"
    echo "   |---filename_template.md"
    echo "   |---.... etc ...."

    exit 1

fi

# Assign arguments to variables for better readability
FIRST_ARG="$1"

mkdir -p "$FIRST_ARG/base/daily"
mkdir -p "$FIRST_ARG/base/monthly"
mkdir -p "$FIRST_ARG/base/weekly"
mkdir -p "$FIRST_ARG/base/yearly"
mkdir -p "$FIRST_ARG/base/quarterly"
mkdir -p "$FIRST_ARG/templates"

if [ -d "templ" ]; then
    cp templ/* "$FIRST_ARG/templates/"
else
    echo "no templ dir"
fi

if [ -d "obsidian-conf" ]; then
    cp -r obsidian-conf "$FIRST_ARG/.obsidian"
else
    echo "no obsidian dir"
fi

echo "done"

