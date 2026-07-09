[9/9/2024 5:06 PM]
# forensics-ascii-vs-utf-8
ASCII and UTF-8 differ significantly in their approach to character representation.

## Character Set Size
### ASCII:
- Represents 128 characters using 7-bit codes[1][4]
- Includes English letters (uppercase and lowercase), numbers, punctuation marks, and some control characters[4]

### UTF-8:
- Can represent over 1.1 million characters[1]
- Covers most graphemes from different languages worldwide[2]

## Encoding Scheme
### ASCII:
- Uses fixed 7-bit encoding for all characters[4]
- Often implemented with 8-bit bytes, leaving the first bit unused or for parity[2]

### UTF-8:
- Uses variable-length encoding of 1 to 4 bytes per character[1][3]
- ASCII characters (0-127) use single bytes
- Other characters use 2, 3, or 4 bytes depending on their Unicode code point[1]

## Compatibility
UTF-8 is designed to be backwards compatible with ASCII:
- The first 128 characters in UTF-8 are identical to ASCII[1]
- ASCII text is valid UTF-8 text[2]

## Efficiency
UTF-8 offers better efficiency for multilingual text:
- Uses less space for common ASCII characters
- Allows representation of a much larger character set

## Usage
### ASCII:
- Still used in legacy systems and as a subset of other encodings[2]
- Limited to English and basic symbols

### UTF-8:
- Widely adopted for modern computing and web technologies[1]
- Supports multilingual text and a vast array of symbols

In summary, while ASCII is limited to 128 characters and primarily supports English, UTF-8 provides a flexible, space-efficient encoding that can represent over a million characters from various writing systems while maintaining compatibility with ASCII.

## References
1. What is UTF-8? UTF-8 character encoding tutorial. (2022, April 3). freeCodeCamp.org. https://www.freecodecamp.org/news/what-is-utf-8-character-encoding/
2. AB, I., & Http://www.injosoft.se. (n.d.). ASCII frequently asked questions (FAQ). ASCII table - Table of ASCII codes, characters and symbols. https://www.ascii-code.com/faq
3. What is ASCII (American Standard Code for Information Interchange)? (2021, September 9). WhatIs.com. https://www.techtarget.com/whatis/definition/ASCII-American-Standard-Code-for-Information-Interchange
4. Unicode, in friendly terms: ASCII, UTF-8, code points, character encodings, and more. (2021). YouTube. https://www.youtube.com/watch?v=ut74oHojxqo
