# encoding: UTF-8

Given /^Postを登録 \(名前 "([^"]*)", タイトル "([^"]*)", 内容 "([^"]*)"\)$/ do |name, title, content|
  visit('/posts/new')
  within("#new_post") do
    fill_in 'post_name', with: name
    fill_in 'post_title', with: title
    fill_in 'post_content', with: content
  end
  click_button "Create Post"
end

When /^Postsにアクセスしている$/ do
  visit('/posts')
end

Then /^「(.*)」が表示されること$/ do |page_name|
  require 'capybara/rspec'
#  page.should have_text(page_name)
  page.should have_css('h1', text: page_name)
end


Then /^登録されたPostが一覧に表示されること\(名前 "([^"]*)", タイトル "([^"]*)"\)$/ do |name, title|
  page.should have_css('tr td', text: name)
  page.should have_css('tr td', title: title)
end