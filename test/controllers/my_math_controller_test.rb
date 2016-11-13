require 'test_helper'

class MyMathControllerTest < ActionDispatch::IntegrationTest
  test 'should get view' do
    get my_math_view_url
    assert_response :success
  end

  test 'should get index' do
    get my_math_index_url
    assert_response :success
  end

  test 'test 1' do
    get my_math_view_url, {n:128}
    assert_equal assigns[:arr], [3,7,31,127]
  end

  test 'test 2'do
    get my_math_view_url, {n:600000}
    assert_equal assigns[:arr], [3,7,31,127,8191,131071,524287]
  end
end
