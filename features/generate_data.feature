Feature: Generate basic data

  Scenario: A single string
    Given the following XML schema:
      """
      <?xml version="1.1" encoding="UTF-8" ?>
      <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xs:element name="foo" type="xs:string" />
      </xs:schema>
      """
    When I run the XML data generator
    Then the output should match the schema

  Scenario: Simple grouping
    Given the following XML schema:
      """
      <?xml version="1.1" encoding="UTF-8" ?>
      <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xs:element name="foo">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="bar" type="xs:string" minOccurs="1" />
              <xs:element name="baz" type="xs:string" minOccurs="1" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:schema>
      """
    When I run the XML data generator
    Then the output should match the schema
