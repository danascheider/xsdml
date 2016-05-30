Given(/^the following XML schema:$/) do |schema|
  @schema = schema
end

When(/^I run the XML data generator$/) do
  @output = XSDML.generate!(@schema)
end
