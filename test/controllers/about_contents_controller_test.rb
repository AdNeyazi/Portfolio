require "test_helper"

class AboutContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about_content = about_contents(:one)
  end

  test "should get index" do
    get about_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_about_content_url
    assert_response :success
  end

  test "should create about_content" do
    assert_difference("AboutContent.count") do
      post about_contents_url, params: { about_content: { achievements: @about_content.achievements, author_bio: @about_content.author_bio, author_name: @about_content.author_name, contact_information: @about_content.contact_information, content: @about_content.content, education: @about_content.education, experience: @about_content.experience, external_links: @about_content.external_links, image: @about_content.image, interests: @about_content.interests, mission_statement: @about_content.mission_statement, publications: @about_content.publications, skills: @about_content.skills, subtitle: @about_content.subtitle, testimonials: @about_content.testimonials, timeline: @about_content.timeline, title: @about_content.title } }
    end

    assert_redirected_to about_content_url(AboutContent.last)
  end

  test "should show about_content" do
    get about_content_url(@about_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_content_url(@about_content)
    assert_response :success
  end

  test "should update about_content" do
    patch about_content_url(@about_content), params: { about_content: { achievements: @about_content.achievements, author_bio: @about_content.author_bio, author_name: @about_content.author_name, contact_information: @about_content.contact_information, content: @about_content.content, education: @about_content.education, experience: @about_content.experience, external_links: @about_content.external_links, image: @about_content.image, interests: @about_content.interests, mission_statement: @about_content.mission_statement, publications: @about_content.publications, skills: @about_content.skills, subtitle: @about_content.subtitle, testimonials: @about_content.testimonials, timeline: @about_content.timeline, title: @about_content.title } }
    assert_redirected_to about_content_url(@about_content)
  end

  test "should destroy about_content" do
    assert_difference("AboutContent.count", -1) do
      delete about_content_url(@about_content)
    end

    assert_redirected_to about_contents_url
  end
end
