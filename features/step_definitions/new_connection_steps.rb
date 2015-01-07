Given(/^the environment variable (\S+) is "(\S+)"$/) do |variable, value|
  ENV[variable] = value
end

When(/^a new RTApi::Connection object is created without arguments$/) do
  @rt = RTApi::Connection.new
end

Then(/^the connections (\S+) attribute should be "(.*?)"$/) do |attribute, value|
  expect(@rt.instance_variable_get("@#{attribute}")).to eq(value)
end
