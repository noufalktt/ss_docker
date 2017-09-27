#!/bin/bash

sleep 10

cqlsh -f schema.sql
cqlsh -f groups.sql
cqlsh -f assets.sql
cqlsh -f unit.sql


