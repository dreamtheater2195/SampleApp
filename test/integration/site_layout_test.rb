require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'  #Verify that the right page template is rendered
    assert_select "a[href=?]", root_path, count: 2 #This ensures that both links to the Home page are present
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path #Here Rails automatically inserts the value of about_path in place of the question mark
    assert_select "a[href=?]", contact_path
  end
end
