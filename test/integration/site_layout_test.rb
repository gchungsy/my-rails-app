require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_page/home'
    assert_select "a[href=?]", root_path, count: 2
<<<<<<< HEAD
    assert_select "a[href=?]", new_post_path
=======
    assert_select "a[href=?]", help_path
>>>>>>> 46c3798b76ba84da3be1934ecf4ea219405699f3
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
end