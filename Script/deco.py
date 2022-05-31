#!/usr/bin/env python3

import configparser
import sys
import requests
from decimal import Decimal
from os.path import expanduser

config = configparser.ConfigParser()

# File must be opened with utf-8 explicitly
with open(expanduser('~/Script/deco-config'), 'r', encoding='utf-8') as f:
    config.read_file(f)

# Everything except the general section
currencies = [x for x in config.sections() if x != 'general']


for currency in currencies:
    icon = config[currency]['icon']
    sys.stdout.write(f'{icon}')
