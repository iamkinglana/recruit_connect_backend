# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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
job_seeker1 = JobSeeker.create(user: user1, name: 'John Doe', contact: '1234567890')
job_seeker2 = JobSeeker.create(user: user2, name: 'Jane Smith', contact: '9876543210')

# Sample data for Employers
employer1 = Employer.create(user: user2, name: 'ABC Company', size: 100, website: 'https://www.abccompany.com')
employer2 = Employer.create(user: user2, name: 'XYZ Inc.', size: 50, website: 'https://www.xyzinc.com')

# Sample data for Jobs
job1 = Job.create(
  employer: employer1,
  job_title: 'Software Engineer',
  job_description: 'Looking for a skilled software engineer to join our team.',
  job_location: 'New York',
  job_category: 'Engineering',
  job_level: 'Mid-level',
  job_skills: 'Ruby on Rails, JavaScript',
  job_qualifications: 'Bachelor\'s degree in Computer Science',
  salary_highest: 100000,
  salary_lowest: 80000,
  application_deadline: Time.now + 30.days
)

job2 = Job.create(
  employer: employer2,
  job_title: 'Marketing Manager',
  job_description: 'Seeking an experienced marketing manager for our marketing department.',
  job_location: 'San Francisco',
  job_category: 'Marketing',
  job_level: 'Senior',
  job_skills: 'Digital Marketing, Market Analysis',
  job_qualifications: 'Master\'s degree in Marketing',
  salary_highest: 120000,
  salary_lowest: 90000,
  application_deadline: Time.now + 45.days
)

# Sample data for Applications
application1 = Application.create(
  job_seeker: job_seeker1,
  job: job1,
  application_date: Time.now,
  resume_attachment: 'resume_file_1.pdf',
  cover_letter_attachment: 'cover_letter_file_1.pdf',
  application_status: 'Submitted'
)

application2 = Application.create(
  job_seeker: job_seeker2,
  job: job2,
  application_date: Time.now,
  resume_attachment: 'resume_file_2.pdf',
  cover_letter_attachment: 'cover_letter_file_2.pdf',
  application_status: 'In Review'
)

# Sample data for SavedJobs
saved_job1 = SavedJob.create(user: job_seeker1.user, job: job2, save: true)
saved_job2 = SavedJob.create(user: job_seeker2.user, job: job1, save: true)

puts "Sample data has been successfully seeded."
