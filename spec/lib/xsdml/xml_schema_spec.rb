RSpec.describe XSDML::XmlSchema do
  subject { described_class.new(schema) }

  describe "#initialize" do
    let(:schema) do
      '<?xml version="1.1" encoding="UTF-8" ?>
      <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xs:element name="foo" type="xs:string" />
      </xs:schema>'
    end

    it "initializes with a schema" do
      expect(subject.schema).to eql schema
    end
  end

  describe "#generate_example" do
    describe "trivial examples" do
      context "simple types" do
        let(:raw_schema) do
          '<?xml version="1.1" encoding="UTF-8" ?>
          <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
            <xs:element name="foo" type="xs:string" />
          </xs:schema>'
        end

        let(:output) do
          '<foo></foo>'
        end
      end
    end
  end
end
