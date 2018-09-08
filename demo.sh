#!/bin/bash

PROMPTS=""
[ "$1" = "-np" ] && PROMPTS="-np"


[ "$1" = "-d" ] && {
    ./scripts/delete.sh $PROMPTS

    ./scripts/create_demo_html.sh

    exit 0
}

[ "$1" = "-c" ] && {
    ./scripts/create.sh $PROMPTS

    ./scripts/create_demo_html.sh -s
}

./scripts/scale.sh $PROMPTS 4

./scripts/upgrade.sh $PROMPTS v2

./scripts/upgrade.sh $PROMPTS v3



