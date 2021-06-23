feature 'Add new bookmark' do
  scenario 'A user can add a new bookmark' do
    visit('/')
    fill_in('title', with: 'Hello There')
    fill_in('url', with: 'http://www.hellothere.com')
    click_button('Add')

    expect(page).to have_link('Hello There', href: 'http://www.hellothere.com')

  end

end