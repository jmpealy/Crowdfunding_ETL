CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (contact_id)
);

SELECT * FROM contacts;

CREATE TABLE category (
    category_id VARCHAR(10) NOT NULL,
    category VARCHAR(20) NOT NULL,
    PRIMARY KEY (category_id)
);

SELECT * FROM category;

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) NOT NULL,
    subcategory VARCHAR(30) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

SELECT * FROM subcategory;

CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal REAL NOT NULL,
    pledged REAL NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(10) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign;