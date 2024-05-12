#!/bin/bash

# Create a directory for raw data if it doesn't exist
mkdir -p data/raw

# Download Zillow data
curl -o data/raw/zillow_data.csv "URL_TO_ZILLOW_DATA"

# Download Census data
curl -o data/raw/census_data.csv "URL_TO_CENSUS_DATA"

# Run Python script to ingest and process the data
python ingest.py
