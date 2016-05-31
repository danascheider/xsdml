RSpec.describe XSDML::XmlSchema do

  describe "#initialize" do
    let(:schema) do
      '<?xml version="1.1" encoding="UTF-8" ?>
      <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xs:element name="foo" type="xs:string" />
      </xs:schema>'
    end

    it "initializes with a schema" do
      sch = described_class.new(schema)
      expect(sch.schema).to eql schema
    end
  end
end
