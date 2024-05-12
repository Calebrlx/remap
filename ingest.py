import pandas as pd
from sqlalchemy import create_engine

# Database connection
engine = create_engine('postgresql://username:password@localhost:5432/realestate_db')

def ingest_data():
    # Ingest Zillow data
    zillow_data = pd.read_csv('data/raw/zillow_data.csv')
    zillow_data.columns = [col.lower() for col in zillow_data.columns]  # Normalize column names
    zillow_data.to_sql('property_prices', engine, if_exists='append', index=False)

    # Ingest Census data
    census_data = pd.read_csv('data/raw/census_data.csv')
    census_data.columns = [col.lower() for col in census_data.columns]  # Normalize column names
    census_data.to_sql('demographics', engine, if_exists='append', index=False)

if __name__ == '__main__':
    ingest_data()
