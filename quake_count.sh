#!/bin/bash

echo -ne "\xff\xff\xff\xffstatus 6" | nc -uw 1 127.0.0.1 27500 | wc -l
