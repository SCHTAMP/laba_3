#!/bin/bash

search_path="/usr"
find "$search_path" -type f -size +20M -print
