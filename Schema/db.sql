CREATE TABLE property_prices (
    id SERIAL PRIMARY KEY,
    region_id INTEGER,
    region_name VARCHAR(255),
    date DATE,
    median_sale_price DECIMAL,
    median_list_price DECIMAL,
    price_per_sq_ft DECIMAL
);

CREATE TABLE sales_inventory (
    id SERIAL PRIMARY KEY,
    region_id INTEGER,
    date DATE,
    homes_sold INTEGER,
    inventory_levels INTEGER,
    sale_to_list_ratio DECIMAL
);

CREATE TABLE demographics (
    id SERIAL PRIMARY KEY,
    region_id INTEGER,
    population INTEGER,
    median_income DECIMAL,
    average_age DECIMAL
);

CREATE TABLE housing_characteristics (
    id SERIAL PRIMARY KEY,
    region_id INTEGER,
    owner_occupied_units INTEGER,
    renter_occupied_units INTEGER,
    total_housing_units INTEGER
);

CREATE TABLE economic_indicators (
    id SERIAL PRIMARY KEY,
    region_id INTEGER,
    employment_rate DECIMAL,
    industry_employment INTEGER
);
