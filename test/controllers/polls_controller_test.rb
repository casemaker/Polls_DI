require "test_helper"

class PollsControllerTest < ActionController::TestCase

  def poll
    @poll ||= polls :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:polls)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Poll.count') do
      post :create, poll: { title: poll.title }
    end

    assert_redirected_to poll_path(assigns(:poll))
  end

  def test_show
    get :show, id: poll
    assert_response :success
  end

  def test_edit
    get :edit, id: poll
    assert_response :success
  end

  def test_update
    put :update, id: poll, poll: { title: poll.title }
    assert_redirected_to poll_path(assigns(:poll))
  end

  def test_destroy
    assert_difference('Poll.count', -1) do
      delete :destroy, id: poll
    end

    assert_redirected_to polls_path
  end
end
