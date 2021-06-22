feature 'Add new bookmark' do
  scenario 'A user can add a new bookmark' do
    visit('/')
    fill_in('url', with: 'http://www.hello.com')
    click_button('Add')

    expect(page).to have_content 'http://www.hello.com'

  end

end