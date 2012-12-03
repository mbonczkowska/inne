require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :author => "Author",
      :title => "Title",
      :isbn => "Isbn",
      :price => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
    rendered.should match(/Title/)
    rendered.should match(/Isbn/)
    rendered.should match(/1/)
  end
end
