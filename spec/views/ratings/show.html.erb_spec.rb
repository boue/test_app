require 'rails_helper'

RSpec.describe "ratings/show", :type => :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :score => 1,
      :picture => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
