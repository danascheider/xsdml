Given(/^the following XML schema:$/) do |schema|
  @schema = schema
end

When(/^I run the XML data generator$/) do
  @output = XSDML.generate!(@schema)
end

Then(/^the output should match the schema$/) do
  xsd = Nokogiri::XML::Schema(@schema)
  doc = Nokogiri::XML(@output)
  expect(xsd.valid?(doc)).to be true
end
