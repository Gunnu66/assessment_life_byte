// Quality control Test case 1- Removing Leading and Trailing Spaces from the users and trades table
# For trades table
df = pd.DataFrame(trades)
cleaned_trades = string.strip()
print(cleaned_trades)

# For Users table
df = pd.DataFrame(users)
cleaned_users = string.strip()
print(cleaned_users)

# Test Case 2- Removing whitespaces from the table's column 
# To wipe out all the white spaces from a perticular column in which we dont need a space.
# for Example if we have a space in between our perticular column and which is not required then we use this test case.


# For trades table

df = pd.DataFrame(trades)
cleaned_trades = df.replace(" ", "")
print(cleaned_trades)

# For Users table

df = pd.DataFrame(users)
cleaned_users = df.replace(" ", "")
print(cleaned_users)


// Test Case 3 - Handling unexpected values in our tables

/* Basically we have a store our table into a data frame by which we can eaisly manupulate our data and check the inconsisteny 
we have a users and trades table in which we have multiple column with differnet data types so we can check the 
data from the python library functions-
Example- we have a volume column in table so we know we have a number in this field so while processsing if we encounter any
unexpected value it will simply ignore it.
*/

for cheking the data for volume field
df = pd.DataFrame(volume)
print(df.isdigit())
// with this we get the unexpected values so we can perform manupulation here.

