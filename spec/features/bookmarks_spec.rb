feature "viewing bookmarks" do
  scenario "page shows the list of bookmarks" do
    visit ("/bookmarks")
    expect(page).to have_content "Google"
  end
end


