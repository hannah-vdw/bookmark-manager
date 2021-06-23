
feature "viewing bookmarks" do
  scenario "page shows the list of bookmarks" do
    Bookmark.add(url:'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.add(url:'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.add(url:'http://www.google.com', title: 'Google')

    visit '/bookmarks'

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end



# connection = PG.connect(dbname: 'bookmark_manager_test')

#     connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
#     connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
#     connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")

#     visit('/bookmarks')

#     expect(page).to have_content "http://www.google.com"
#     expect(page).to have_content "http://www.makersacademy.com"
#     expect(page).to have_content "http://www.destroyallsoftware.com"