# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create!(email: 'admin1@gmail.com', password: '12345678', password_confirmation: '12345678', roles: 'admin')
# User.create!(email: 'user1@gmail.com', password: '12345678', password_confirmation: '12345678')

# AboutContent.create!(
#   title: "My About Page",
#   subtitle: "Subtitle",
#   image: "image_url.jpg",
#   author_name: "John Doe",
#   author_bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
#   contact_information: "contact@example.com",
#   skills: "Ruby on Rails, JavaScript, HTML, CSS",
#   education: "Bachelor's Degree in Computer Science",
#   experience: "5 years of experience as a web developer",
#   interests: "Reading, hiking, photography",
#   mission_statement: "To create beautiful and functional web applications",
#   testimonials: "John is a fantastic developer!",
#   achievements: "Winner of the Best Web Developer Award 2023",
#   publications: "Published article on Ruby on Rails best practices",
#   timeline: "Worked at Company XYZ from 2019 to present",
#   external_links: "https://example.com",
#   content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
# )

# Project.destroy_all

# # Create three fake projects
# 3.times do
#   Project.create(
#     title: Faker::Lorem.sentence(word_count: 3),
#     description: Faker::Lorem.paragraph(sentence_count: 4)
#   )
# end

# db/seeds.rb

# Create or find Adnan Neyazi
adnan = Resume.find_or_initialize_by(name: 'Adnan Neyazi')

# Update the attributes
adnan.update(
  position: 'Junior Software Developer',
  summary: 'I am a dedicated and experienced software developer with a passion for creating efficient, scalable, and user-friendly software solutions. With a strong background in [mention your relevant technologies or programming languages], I thrive in collaborative environments where I can contribute my expertise in [mention specific areas of expertise, such as web development, mobile app development, etc.].',
  degree: 'BE (CSE)',
  college: 'Anjuman College of Engineering and Technology',
  university: 'RTM Nagpur University',
  company_name: 'Shadbox',
  experience: 7,
  experience_summary: "In my role as a software developer at Shadbox, I have had the opportunity to work on a diverse range of projects, allowing me to expand my skills and knowledge in various areas of software development. I have collaborated with cross-functional teams to design, develop, and deploy software solutions that meet the specific needs and requirements of our clients."
)

# Output success message
puts "Adnan Neyazi's resume seeded successfully!"
