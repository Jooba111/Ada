Given a string input:
String can be hard-coded
Assume not null or empty
Contains only lower and upper case letters and spaces
Implement encoding and decoding of the string using following ciphers:
Caesar cipher (shift by N positions)
Atbash cipher (A↔Z, B↔Y, a↔z, etc.)
Create a package that exposes procedures to encode and decode the string using both ciphers.

In the main unit, sequentially for both ciphers:
output the original string
encode the given string and output the result
decode and output again.
String should be encoded/decoded in-place, meaning no new strings should be created in the package.
Spaces should be ignored, and casing of letters should be preserved
Decrypted string should match the original.
