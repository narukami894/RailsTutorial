require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @default_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get root' do
    get root_url
    assert_response :success
    assert_select 'title', @default_title
  end

  test 'should get help' do
    get help_url
    assert_response :success
    assert_select 'title', "Help | #{@default_title}"
  end

  test 'should get about' do
    get about_url
    assert_response :success
    assert_select 'title', "About | #{@default_title}"
  end

  test 'should get contact' do
    get contact_url
    assert_response :success
    assert_select 'title', "Contact | #{@default_title}"
  end
end
