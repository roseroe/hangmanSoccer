Given(/^que abri el juego$/) do
  visit '/'
end


Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Then(/^debo seleccionar "([^"]*)"$/) do |texto|
  click_button("Jugadores")
end

