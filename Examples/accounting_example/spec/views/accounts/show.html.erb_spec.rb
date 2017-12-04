require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :name => "Name",
      :account_type => "Account Type",
      :currency => "Currency"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Account Type/)
    expect(rendered).to match(/Currency/)
  end
end
