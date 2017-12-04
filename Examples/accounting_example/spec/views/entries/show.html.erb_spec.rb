require 'rails_helper'

RSpec.describe "entries/show", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :from_account => "From Account",
      :to_account => "To Account",
      :amount => "9.99",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/From Account/)
    expect(rendered).to match(/To Account/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
