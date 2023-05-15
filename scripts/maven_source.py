#!/usr/bin/env python3

from sys import argv, exit

if len(argv) != 2 or argv[1] not in ["default", "nexus"]:
    print("You should choose just one of the options:\n\n default | nexus")
    exit(1)

from os import rename, path, environ

default = environ['HOME'] + "/.m2/.settings.xml"
nexus = environ['HOME'] + "/.m2/settings.xml"

if argv[1] == "default":
    if path.isfile(default):
        print("Already default")
        exit(0)

    rename(nexus, default)
    print("Now set to default")
else:
    if path.isfile(nexus):
        print("Already nexus")
        exit(0)

    rename(default, nexus)
    print("Now set to nexus")
