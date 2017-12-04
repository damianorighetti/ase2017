require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :name => "Name",
        :account_type => "Account Type",
        :currency => "Currency"
      ),
      Account.create!(
        :name => "Name",
        :account_type => "Account Type",
        :currency => "Currency"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Account Type".to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
  end
end
