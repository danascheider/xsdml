Given(/^the following XML schema:$/) do |schema|
  @schema = schema
end

When(/^I run the XML data generator$/) do
  @output = XSDML.generate!(@schema)
end

Then(/^the output should match the schema$/) do
  expect{ @schema.validate(@output) }.not_to raise_error(Nokogiri::XML::SyntaxError)
end
