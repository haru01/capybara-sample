# encoding: UTF-8

Given /^記事を投稿する$/ do |table|
  table.hashes.each do | params |
    visit('/posts/new')
    within("#new_post") do
      fill_in 'post_name', with: params[:name]
      fill_in 'post_title', with: params[:title]
      fill_in 'post_content', with: params[:content]
    end
    click_button "記事を投稿"
  end
end

When /^記事一覧を表示している$/ do
  visit('/posts')
end

Then /^画面名「(.*)」が表示されること$/ do |page_name|
  page.should have_css('h1', text: page_name)
end

Then /^登録された記事が一覧に表示されること$/ do |table|
  table.hashes.each do | params |
    page.should have_css('tr td', text: params[:name])
    page.should have_css('tr td', text: params[:title])
  end
end