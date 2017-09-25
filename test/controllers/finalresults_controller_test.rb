require 'test_helper'

class FinalresultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finalresult = finalresults(:one)
  end

  test "should get index" do
    get finalresults_url
    assert_response :success
  end

  test "should get new" do
    get new_finalresult_url
    assert_response :success
  end

  test "should create finalresult" do
    assert_difference('Finalresult.count') do
      post finalresults_url, params: { finalresult: { answer_id: @finalresult.answer_id, result: @finalresult.result, user_id: @finalresult.user_id } }
    end

    assert_redirected_to finalresult_url(Finalresult.last)
  end

  test "should show finalresult" do
    get finalresult_url(@finalresult)
    assert_response :success
  end

  test "should get edit" do
    get edit_finalresult_url(@finalresult)
    assert_response :success
  end

  test "should update finalresult" do
    patch finalresult_url(@finalresult), params: { finalresult: { answer_id: @finalresult.answer_id, result: @finalresult.result, user_id: @finalresult.user_id } }
    assert_redirected_to finalresult_url(@finalresult)
  end

  test "should destroy finalresult" do
    assert_difference('Finalresult.count', -1) do
      delete finalresult_url(@finalresult)
    end

    assert_redirected_to finalresults_url
  end
end
