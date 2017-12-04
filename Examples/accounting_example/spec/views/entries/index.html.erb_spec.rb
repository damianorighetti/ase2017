require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        :from_account => "From Account",
        :to_account => "To Account",
        :amount => "9.99",
        :description => "MyText"
      ),
      Entry.create!(
        :from_account => "From Account",
        :to_account => "To Account",
        :amount => "9.99",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", :text => "From Account".to_s, :count => 2
    assert_select "tr>td", :text => "To Account".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
