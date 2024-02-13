require "application_system_test_case"

class AboutContentsTest < ApplicationSystemTestCase
  setup do
    @about_content = about_contents(:one)
  end

  test "visiting the index" do
    visit about_contents_url
    assert_selector "h1", text: "About contents"
  end

  test "should create about content" do
    visit about_contents_url
    click_on "New about content"

    fill_in "Achievements", with: @about_content.achievements
    fill_in "Author bio", with: @about_content.author_bio
    fill_in "Author name", with: @about_content.author_name
    fill_in "Contact information", with: @about_content.contact_information
    fill_in "Content", with: @about_content.content
    fill_in "Education", with: @about_content.education
    fill_in "Experience", with: @about_content.experience
    fill_in "External links", with: @about_content.external_links
    fill_in "Image", with: @about_content.image
    fill_in "Interests", with: @about_content.interests
    fill_in "Mission statement", with: @about_content.mission_statement
    fill_in "Publications", with: @about_content.publications
    fill_in "Skills", with: @about_content.skills
    fill_in "Subtitle", with: @about_content.subtitle
    fill_in "Testimonials", with: @about_content.testimonials
    fill_in "Timeline", with: @about_content.timeline
    fill_in "Title", with: @about_content.title
    click_on "Create About content"

    assert_text "About content was successfully created"
    click_on "Back"
  end

  test "should update About content" do
    visit about_content_url(@about_content)
    click_on "Edit this about content", match: :first

    fill_in "Achievements", with: @about_content.achievements
    fill_in "Author bio", with: @about_content.author_bio
    fill_in "Author name", with: @about_content.author_name
    fill_in "Contact information", with: @about_content.contact_information
    fill_in "Content", with: @about_content.content
    fill_in "Education", with: @about_content.education
    fill_in "Experience", with: @about_content.experience
    fill_in "External links", with: @about_content.external_links
    fill_in "Image", with: @about_content.image
    fill_in "Interests", with: @about_content.interests
    fill_in "Mission statement", with: @about_content.mission_statement
    fill_in "Publications", with: @about_content.publications
    fill_in "Skills", with: @about_content.skills
    fill_in "Subtitle", with: @about_content.subtitle
    fill_in "Testimonials", with: @about_content.testimonials
    fill_in "Timeline", with: @about_content.timeline
    fill_in "Title", with: @about_content.title
    click_on "Update About content"

    assert_text "About content was successfully updated"
    click_on "Back"
  end

  test "should destroy About content" do
    visit about_content_url(@about_content)
    click_on "Destroy this about content", match: :first

    assert_text "About content was successfully destroyed"
  end
end
