require 'rails_helper'

RSpec.describe "entries/new", type: :view do
  before(:each) do
    assign(:entry, Entry.new(
      :from_account => "MyString",
      :to_account => "MyString",
      :amount => "9.99",
      :description => "MyText"
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "input[name=?]", "entry[from_account]"

      assert_select "input[name=?]", "entry[to_account]"

      assert_select "input[name=?]", "entry[amount]"

      assert_select "textarea[name=?]", "entry[description]"
    end
  end
end
