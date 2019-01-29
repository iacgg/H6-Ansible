#!/usr/bin/env python3

# Importere de nødvendige pakker fra python
import os
import sys
import glob
import json
import yaml

# Først så finder jeg alle customer.yml filerne
customer_files = glob.glob('./deploy/customers/' + '*.yml')

# Lavet et tomt dictonary til indhold af customer content
all_customers = {}

# Tjekker om der er et argument med fra deployment der ikke er all
# Hvis det er all, så vil alle blive customers blive deployet 
if sys.argv[1] == 'all':
    limit = None
else:
    limit = sys.argv[1]
    
for customers in customer_files:
    # Sætter kunden navn til filnavnet uden exention
    customer_name = os.path.basename(customers)[:-4]
    if limit is not None:
        # Tjekker om limit bliver brugt i deployment
        if limit == customer_name:
            with open(customers, 'r') as customer_file:
                # Læser indholder at customer filen
                customer_content = yaml.safe_load_all(customer_file)
                for content in customer_content:
                    # Tilføjer customer data til et samlet dictonary
                    all_customers[customer_name] = content
    else:
        with open(customers, 'r') as customer_file:
            # Læser indholder at customer filen
            customer_content = yaml.safe_load_all(customer_file)
            for content in customer_content:
                # Tilføjer customer data til et samlet dictonary
                all_customers[customer_name] = content

# Outputter indholder et det samlet dictonary
print(json.dumps(all_customers))
