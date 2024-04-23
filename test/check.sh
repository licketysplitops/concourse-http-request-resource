#!/usr/bin/env bash

first=$(jq -n '
{
  "source": {
    "uri": "https://storage.googleapis.com/kubernetes-release/release/stable.txt"
  }
}
')


echo $first | ../assets/check

second=$(jq -n '
{
  "source": {
    "uri": "https://storage.googleapis.com/kubernetes-release/release/stable.txt"
  },
  "version": {
    "release": "v1.29.1"
  }
}
')


echo $second | ../assets/check