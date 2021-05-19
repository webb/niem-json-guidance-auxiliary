
The basic idea here is to figure out how to organize JSON that represents ORDERED content.

This is more focused on JSON-LD representation, rather than JSON Schema.

see instance.json for an example ordering 'personName' fields.

This format could also be used to represent mixed content. See "mixed.json",
which copies the data model from "mixed.xml".

- Each element within the mixed content becomes its own object, with a single
  property.

- It's not clear how you'd represent an attribute (e.g., "lang") on the letter.

- from <https://www.w3schools.com/xml/schema_complex_mixed.asp>
