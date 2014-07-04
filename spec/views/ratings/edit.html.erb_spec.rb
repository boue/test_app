require 'rails_helper'

RSpec.describe "ratings/edit", :type => :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :score => 1,
      :picture => nil
    ))
  end

  it "renders the edit rating form" do
    render

    assert_select "form[action=?][method=?]", rating_path(@rating), "post" do

      assert_select "input#rating_score[name=?]", "rating[score]"

      assert_select "input#rating_picture_id[name=?]", "rating[picture_id]"
    end
  end
end
