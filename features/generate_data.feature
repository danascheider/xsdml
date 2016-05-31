Feature: Generate basic data

  Scenario: An empty XML schema
    Given the following XML schema:
      """
      <?xml version="1.1" encoding="UTF-8" ?>
      <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
      </xs:schema>
      """
    When I run the XML data generator
    Then the output should match the schema

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
