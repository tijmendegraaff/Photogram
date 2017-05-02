require 'rails_helper'

feature 'Deleting a post' do
  background do
    post = create(:post, caption: 'Abs for days.')
    visit "/posts/#{post.id}"
    # find(:xpath, '//a[contains(@href,"posts/#{post.id}")]').click
    click_link 'Edit Post'
  end
  scenario 'Deleting the post' do
  click_link 'Delete Post'
  expect(page).to have_content('Your post has been deleted.')
  expect(page).to_not have_content('Abs for days.')
  end
end




# create an example post using factory_girl
# visit the root route
# click on the image to 'show' the individual post
# click on the 'Edit Post' button to enter the edit view
# click on the 'Delete Post' button
# expect to be routed to the root again.
# expect to see the message "Problem solved!  Post deleted."
# expect to not see the old post anymore.
