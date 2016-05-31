#!/bin/bash

PUG="pug --watch"

$PUG _pug/layouts/*.pug -o _layouts &
$PUG _pug/*.pug -o ./ &