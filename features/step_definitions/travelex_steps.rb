Given /^I am on travelex home page$/ do
  visit(Home).home
  expect(on_page(Home).title).to eq "Currency Exchange | Buy Travel Money | Travelex"
  expect(on_page(Home).products_list_on_display?).to be true
end

When /^I resize the page to less than "(\d+)px"$/ do |resize|
  on_page(Home).resize_width(resize)
  expect(on_page(Home).links_with_width_resized?).to be true
end

When /^slide though the screens$/ do
  on_page(Home).slide_through
end

Then /^I should on screen number "(\d+)"$/ do |screen_number|
  expect(on_page(Home).landed_on_screen(screen_number)).to be true
end