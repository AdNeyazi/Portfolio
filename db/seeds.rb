# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create!(email: 'admin1@gmail.com', password: '12345678', password_confirmation: '12345678', roles: 'admin')
# User.create!(email: 'user1@gmail.com', password: '12345678', password_confirmation: '12345678')

AboutContent.create!(
  title: "My About Page",
  subtitle: "Subtitle",
  image: "image_url.jpg",
  author_name: "John Doe",
  author_bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  contact_information: "contact@example.com",
  skills: "Ruby on Rails, JavaScript, HTML, CSS",
  education: "Bachelor's Degree in Computer Science",
  experience: "5 years of experience as a web developer",
  interests: "Reading, hiking, photography",
  mission_statement: "To create beautiful and functional web applications",
  testimonials: "John is a fantastic developer!",
  achievements: "Winner of the Best Web Developer Award 2023",
  publications: "Published article on Ruby on Rails best practices",
  timeline: "Worked at Company XYZ from 2019 to present",
  external_links: "https://example.com",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
)