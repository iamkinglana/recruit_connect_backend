# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Clear existing data from the tables before seeding
# db/seeds.rb

# Clear existing data from the tables before seeding
Application.destroy_all
SavedJob.destroy_all
Job.destroy_all
Employer.destroy_all
JobSeeker.destroy_all
User.destroy_all

# Sample data for Users
user1 = User.create(email: 'user1@example.com', password: 'password', role: 'job_seeker')
user2 = User.create(email: 'user2@example.com', password: 'password', role: 'employer')

22.times do |i|
    User.create!(
      email: "employer#{i + 1}@example.com",
      password: 'password', # Replace 'password' with the desired password for the employer
      role: 'employer'
    )
  end
# Sample data for Job Seekers
job_seeker1 = JobSeeker.create(
  user_id: user1.id,
  name: 'John Kazimbele',
  contact: '1234567890',
  profile_image: 'profile_image_1.jpg',
  resume_attachment: 'resume_file_1.pdf'
)

job_seeker2 = JobSeeker.create(
  user_id: user2.id,  # Use user2.id to associate the JobSeeker with the employer (user) Jane Smith
  name: 'Jane Kirigo',
  contact: '9876543210',
  profile_image: 'profile_image_2.jpg',
  resume_attachment: 'resume_file_2.pdf'
)
Employers.create!(
  name: "Google",
  size: 150000,
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google_logo.svg/1200px-Google_logo.svg.png",
  website: "https://www.google.com/",
  email: "info@google.com",
  phone: 1234567890,
  user_id: 1
)

Employers.create!(
  name: "Apple",
  size: 147000,
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Apple_logo_black.svg/1200px-Apple_logo_black.svg.png",
  website: "https://www.apple.com/",
  email: "info@apple.com",
  phone: 9876543210,
  user_id: 1
)

Employers.create!(
  name: "Microsoft",
  size: 181000,
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Microsoft_logo.svg/1200px-Microsoft_logo.svg.png",
  website: "https://www.microsoft.com/",
  email: "info@microsoft.com",
  phone: 3210987654,
  user_id: 1
)

Employers.create!(
  name: "Amazon",
  size: 1500000,
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Amazon_logo.svg/1200px-Amazon_logo.svg.png",
  website: "https://www.amazon.com/",
  email: "info@amazon.com",
  phone: 5432109876,
  user_id: 1
)

Employers.create!(
  name: "Facebook",
  size: 70000,
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Facebook_logo_%282019%29.svg/1200px-Facebook_logo_%282019%29.svg.png",
  website: "https://www.facebook.com/",
  email: "info@facebook.com",
  phone: 7654321098,
  user_id: 1
)

Employers.create!(
  name: "Tesla",
  size: 70000,
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Tesla_logo.svg/1200px-Tesla_logo.svg.png",
  website: "https://www.tesla.com/",
  email: "info@tesla.com",
  phone: 9876543210,
  user_id: 1
)

# European tech companies

Employers.create!(
  name: "SAP",
  size: 100000,
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/SAP_Logo.svg/1200px-SAP_Logo.svg.png",
  website: "https://www.sap.com/",
  email: "info@sap.com",
  phone: 3210987654,
  user_id: 1
)

Employers.create!(
  name: "Atlassian",
  size: 10000,
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Atlassian_logo.svg/1200px-Atlassian_logo.svg.png",
  website: "https://www.atlassian.com/",
  email: "info@atlassian.com"
  )
  # European banks

Employers.create!(
    name: "Santander",
    size: 190000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Santander_logo.svg/1200px-Santander_logo.svg.png",
    website: "https://www.santander.com/",
    email: "info@santander.com",
    phone: 3210987654,
    user_id: 1
  )
  
  Employers.create!(
    name: "ING",
    size: 90000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/ING_logo.svg/1200px-ING_logo.svg.png",
    website: "https://www.ing.com/",
    email: "info@ing.com",
    phone: 5432109876,
    user_id: 1
  )
  
  Employers.create!(
    name: "HSBC",
    size: 250000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/HSBC_logo.svg/1200px-HSBC_logo.svg.png",
    website: "https://www.hsbc.com/",
    email: "info@hsbc.com",
    phone: 7654321098,
    user_id: 1
  )
  
  Employers.create!(
    name: "Barclays",
    size: 100000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Barclays_logo.svg/1200px-Barclays_logo.svg.png",
    website: "https://www.barclays.com/",
    email: "info@barclays.com",
    phone: 9876543210,
    user_id: 1
  )
  
  Employers.create!(
    name: "Credit Suisse",
    size: 50000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Credit_Suisse_logo.svg/1200px-Credit_Suisse_logo.svg.png",
    website: "https://www.credit-suisse.com/",
    email: "info@credit-suisse.com",
    phone: 1234567890,
    user_id: 1
  )
  
  # US banks
  
  Employers.create!(
    name: "Bank of America",
    size: 230000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Bank_of_America_logo.svg/1200px-Bank_of_America_logo.svg.png",
    website: "https://www.bankofamerica.com/",
    email: "info@bankofamerica.com",
    phone: 3210987654,
    user_id: 1
  )
  
  Employers.create!(
    name: "J.P. Morgan Chase",
    size: 270000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/JPMorgan_Chase_logo.svg/1200px-JPMorgan_Chase_logo.svg.png",
    website: "https://www.jpmorganchase.com/",
    email: "info@jpmorganchase.com",
    phone: 5432109876,
    user_id: 1
  )
  
  Employers.create!(
    name: "HSBC",
    size: 235000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/HSBC_logo.svg/1200px-HSBC_logo.svg.png",
    website: "https://www.hsbc.com/",
    email: "info@hsbc.com",
    phone: 4321098765,
    user_id: 1
  )
  
  Employers.create!(
    name: "Barclays",
    size: 120000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Barclays_logo.svg/1200px-Barclays_logo.svg.png",
    website: "https://www.barclays.com/",
    email: "info@barclays.com",
    phone: 6543210987,
    user_id: 1
  )
  
  Employers.create!(
    name: "BNP Paribas",
    size: 200000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/BNP_Paribas_logo.svg/1200px-BNP_Paribas_logo.svg.png",
    website: "https://www.bnpparibas.com/",
    email: "info@bnpparibas.com",
    phone: 8765432109,
    user_id: 1
  )
  
  Employers.create!(
    name: "Santander",
    size: 190000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Santander_logo.svg/1200px-Santander_logo.svg.png",
    website: "https://www.santander.com/",
    email: "info@santander.com",
    phone: 0987654321,
    user_id: 1
  )
  
  Employers.create!(
    name: "Credit Suisse",
    size: 50000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Credit_Suisse_logo.svg/1200px-Credit_Suisse_logo.svg.png",
    website: "https://www.credit-suisse.com/",
    email: "info@credit-suisse.com",
    phone: 2109876543,
    user_id: 1
  )
  
  # US banks
  
  Employers.create!(
    name: "Bank of America",
    size: 230000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Bank_of_America_logo.svg/1200px-Bank_of_America_logo.svg.png",
    website: "https://www.bankofamerica.com/",
    email: "info@bankofamerica.com",
    phone: 3210987654,
    user_id: 1
  )
  
  Employers.create!(
    name: "Citigroup",
    size: 200000,
    logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Citigroup_logo.svg/1200px-Citigroup_logo.svg.png",
    website: "https://www.citigroup.com/",
    email: "info@citigroup.com",
    phone: 5432109876,
    user_id: 1
  )
# Sample data for Jobs
job1 = Job.create(
  employer_id: 1,
  job_title: 'Software Engineer',
  job_description: 'We are looking for a skilled Software Engineer...',
  job_location: 'New York, NY',
  job_category: 'Engineering',
  job_level: 'Mid-level',
  job_skills: 'Ruby on Rails, React, PostgreSQL',
  job_qualifications: 'Bachelor\'s degree in Computer Science...',
  salary_highest: 90000,
  salary_lowest: 70000,
  application_deadline: Time.now + 1.month
)

job2 = Job.create(
  employer_id: 2,
  job_title: 'Web Developer',
  job_description: 'We are hiring a Web Developer with experience in...',
  job_location: 'San Francisco, CA',
  job_category: 'Web Development',
  job_level: 'Junior',
  job_skills: 'HTML, CSS, JavaScript',
  job_qualifications: 'Some experience with front-end development...',
  salary_highest: 80000,
  salary_lowest: 60000,
  application_deadline: Time.now + 1.month
)

# Sample data for Applications
# (Skipping application data for brevity, use similar format as above)

# Sample data for SavedJobs
saved_job1 = SavedJob.create(job_seeker_id: job_seeker1.id, job_id: job2.id, saved_job: true)
saved_job2 = SavedJob.create(job_seeker_id: job_seeker2.id, job_id: job1.id, saved_job: true)

puts "Sample data has been successfully seeded."

