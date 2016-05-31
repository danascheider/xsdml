RSpec.describe XSDML::Generator do
  describe "#generate!" do
    it "generates a main XML tag" do
      str = "<?xml version=\"1.1\" encoding=\"UTF-8\" ?>"
      expect(described_class.generate!("foo")).to include(str)
    end

    context "specific attributes" do
      let(:raw_schema) do
        '<?xml version="1.1" encoding="UTF-8" ?>
        <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
          <xs:element name="foo" type="xs:string" />
        </xs:schema>'
      end

      let(:schema) { Nokogiri::XML::Schema(raw_schema) }

      it "generates matching XML" do
        output = Nokogiri::XML(described_class.generate!(raw_schema))
        expect(schema.valid?(output)).to be true
      end
    end
  end
end
