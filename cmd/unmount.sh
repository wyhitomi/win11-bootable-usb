#!/bin/bash

hdiutil unmount $(df -h | grep CCCOMA_X64 | awk '{print $1}')
