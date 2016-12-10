## 1) Define required ingredients
['peanut butter', 'jelly', 'bread']

## 2) Define current inventory
['peanut butter', 'pickles', 'jelly']

## 3) Check each item in required ingredients against current inventory

  ## 3.1) Check inventory for peanut butter
    ### 3.1.1) Check first item in inventory to see if peanut butter
    ### 3.1.2) Chech second item in inventory to see if peanut butter
    ### 3.1.3) etc...
    ### 3.1.x) Combine with OR (||) operator

['peanut butter', 'pickles', 'jelly'][0] == 'peanut butter' ||
['peanut butter', 'pickles', 'jelly'][1] == 'peanut butter' ||
['peanut butter', 'pickles', 'jelly'][2] == 'peanut butter'

  ## 3.2) Check inventory for jelly
  ## 3.3) Check inventory for bread

