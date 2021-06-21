feature "Index page" do
  scenario "index page displays hello world" do
    visit "/bookmarks/index"
    expect(page).to have_content "Bookmark Manager"
  end
end

feature "Index page" do
  scenario "index page loads 200" do
    visit "/bookmarks/index"
    expect(page.status_code).to eq(200)
  end
end
