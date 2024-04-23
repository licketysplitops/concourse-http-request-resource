#!/usr/bin/env bash

foobar=$(jq -n '
{
  "source": {
    "uri": "https://storage.googleapis.com/kubernetes-release/release/stable.txt"
  },
  "version": {
    "release": "v1.29.1"
  }
}
')


echo $foobar | ../assets/in './foobar'