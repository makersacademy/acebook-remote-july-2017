module PostHelpers
  def make_a_post
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
  end
end
