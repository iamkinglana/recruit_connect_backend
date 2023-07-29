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

# Sample data for Job Seekers
job_seeker1 = JobSeeker.create(
  user_id: user1.id,
  name: 'John Doe',
  contact: '1234567890',
  profile_image: 'profile_image_1.jpg',
  resume_attachment: 'resume_file_1.pdf'
)

job_seeker2 = JobSeeker.create(
  user_id: user2.id,  # Use user2.id to associate the JobSeeker with the employer (user) Jane Smith
  name: 'Jane Smith',
  contact: '9876543210',
  profile_image: 'profile_image_2.jpg',
  resume_attachment: 'resume_file_2.pdf'
)

# Sample data for Employers
employer1 = Employer.create(
  user_id: user2.id,
  name: 'ABC Company',
  size: 100,
  logo: 'logo1.png',
  website: 'www.abccompany.com',
  email: 'employer1@example.com',
  phone: '1234567890'
)

# Sample data for Jobs
job1 = Job.create(
  employer_id: employer1.id,
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
  employer_id: employer1.id,
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
saved_job1 = SavedJob.create(user_id: job_seeker1.user_id, job_id: job2.id, favoritejob: true)
saved_job2 = SavedJob.create(user_id: job_seeker2.user_id, job_id: job1.id, favoritejob: true)

puts "Sample data has been successfully seeded."
