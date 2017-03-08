require 'test_helper'

class PileTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @pile = @user.piles.build()
  end

  test "should be valid" do
    assert @pile.valid?
  end

  test "user id should be present" do
    @pile.user_id = nil
    assert_not @pile.valid?
  end
end
