require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "converting comment rating to human readable rating" do
  	# comment = FactoryGirl.build(:comment, :rating => "1_star", :user => nil, :place => nil)
    comment = Comment.new(:rating => "1_star")
    assert_equal "one star", comment.humanized_rating

    comment = Comment.new(:rating => "2_stars")
    assert_equal "two stars", comment.humanized_rating
	end

end
