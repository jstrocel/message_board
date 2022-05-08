require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    @posts = create_list(:post, 2, title:"Title", body:"MyText")
  end

  it "renders a list of posts" do
    render
    assert_select "h2.post-title", text: "Title".to_s, count: 2
    assert_select "h3.post-subtitle", text: "MyText".to_s, count: 2
  end
end
