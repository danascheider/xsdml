RSpec.describe XSDML::Generator do
  describe "#generate!" do
    it "generates a main XML tag" do
      str = "<?xml version=\"1.1\" encoding=\"UTF-8\" ?>"
      expect(described_class.generate!("foo")).to include(str)
    end
  end
end
