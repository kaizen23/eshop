require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
		#assert based on data from fixture
		assert_select '#columns #side li', minimum: 4
		assert_select 'h3' , 'Programming Ruby 1.9'
		assert_select 'h3' , 'MyString'
		#assert_select '.price', /\$[,\d]+\.\d\d/
		assert_select '#main .entry', 3
  end

end