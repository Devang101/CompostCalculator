require 'test_helper'

class PilesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @pile = piles(:orange)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Pile.count' do
      post piles_path, params: { pile: { content: "Lorem ipsum" } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Pile.count' do
      delete pile_path(@pile)
    end
    assert_redirected_to login_url
  end
end
