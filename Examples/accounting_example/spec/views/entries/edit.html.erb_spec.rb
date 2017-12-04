require 'rails_helper'

RSpec.describe "entries/edit", type: :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :from_account => "MyString",
      :to_account => "MyString",
      :amount => "9.99",
      :description => "MyText"
    ))
  end

  it "renders the edit entry form" do
    render

    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do

      assert_select "input[name=?]", "entry[from_account]"

      assert_select "input[name=?]", "entry[to_account]"

      assert_select "input[name=?]", "entry[amount]"

      assert_select "textarea[name=?]", "entry[description]"
    end
  end
end
