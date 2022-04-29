# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

puts "There are #{Salesperson.all.count} salespeople."

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Ben"
new_salesperson["last_name"] = "Block"
new_salesperson["email"] = "bblock@test.com"
new_salesperson.save

new_salesperson2 = Salesperson.new
new_salesperson2["first_name"] = "Brian"
new_salesperson2["last_name"] = "Eng"
new_salesperson2["email"] = "beng@test.com"
new_salesperson2.save

# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} salespeople."

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

brian = Salesperson.find_by({"first_name" => "Brian"})
brian["email"] = "brian.eng@test.com"
brian.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

all_salespeople = Salesperson.all
for salesperson in all_salespeople
    puts "#{salesperson["first_name"]} #{salesperson["last_name"]}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
