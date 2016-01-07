require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create a comment" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)

    #expect NotificationMailer to be called with method comment_added, this tells it to ignore it (stubbing)
    #expect return nil, have return be something other than nil as part of stubbing that would accept deliver method

    #can configure domain here directly as well, but this will ACTUALLY SEND AN EMAIL

    assert_difference 'Comment.count' do
      post :create, :place_id => place.id, :comment => {
        :message => 'this is a comment',
        :rating => 'three stars'      }
    end
    
    assert_redirected_to place_path(place)
    assert_equal 1, place.comments.count
  end

end
