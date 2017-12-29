#!/bin/bash

docker run --name mgz2 -p 5555:5432 -e POSTGRES_DB=mgz2 -e POSTGRES_PASSWORD=password -d postgres
