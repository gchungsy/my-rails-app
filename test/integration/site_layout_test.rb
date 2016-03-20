require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_page/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", new_post_path, count: 0
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path, count: 0
  end
end