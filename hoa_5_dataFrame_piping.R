# Create a vector of IDs from 1 to 10
id <- c(1:10)

# Create a vector of employee names
name <- c("Shorup Ahmed", "Mostofa Maruf", "Moriom Akter", "Maksudul Islam",
          "Zara Mostafa", "Nishu Mostafa", "Anisul Islam", "Emran Hossain",
          "Dipu Roy", "Nusrat Nidra")

# Create a vector of job titles for each employee
job_tittle <- c("Engnr.", "Engnr", "Gov.Employee", "Proffessor", "Singer",
                "Gov. Employee", "Influencer", "Student", "Student", "Vlogger")

# Combine the three vectors into a data frame named 'employee'
employee <- data.frame(id, name, job_tittle)

# View the 'employee' data frame in RStudio Viewer (commented out here)
# View(employee)

# Separate the 'name' column into two new columns: 'first_name' and 'last_name'
# The separator used is a space (' ')
employee <- separate(employee, name, into = c('first_name', 'last_name'), sep = ' ')

# Create a new set of first names for another dataset
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", 
                "Candace", "Carlson", "Pansy", "Darius", "Claudia")

# Create a new set of last names for another dataset
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", 
               "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

# Create a new set of job titles for another dataset
job_title <- c("Professional", "Programmer", "Management", "Clerical", 
               "Developer", "Programmer", "Management", "Clerical", 
               "Developer", "Programmer")

# Combine the new vectors into a data frame named 'employee2'
employee2 <- data.frame(id, first_name, last_name, job_title)

# Combine 'first_name' and 'last_name' into a single column named 'name'
# The separator used is a space (' ')
employee2 <- unite(employee2, 'name', first_name, last_name, sep = ' ')

# View the 'employee2' data frame
print(employee2)

# Load and view the 'penguins' dataset (from the 'palmerpenguins' package)
View(penguins)

# Modify the 'penguins' dataset:
# - Create a new column 'body_mass_kg' by dividing 'body_mass_g' by 1000
# - Use 'drop_na()' to remove rows with missing values
peng <- penguins %>% 
  mutate(body_mass_kg = body_mass_g / 1000) %>% 
  drop_na()

# View the modified 'peng' dataset
View(peng)

# Display column names of the 'penguins' dataset
colnames(penguins)
