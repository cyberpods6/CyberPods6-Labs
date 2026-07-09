[9/9/2024 4:42 PM]
# forensics-ascII
ASCII (American Standard Code for Information Interchange) is a character encoding standard used for representing text in computers and communication equipment[1].

## ASCII Representation
**Key points:**
- ASCII uses 7 bits to represent each character
- This allows for 128 unique character codes (2^7 = 128)
- Characters are assigned numerical values from 0 to 127

**Representation formats:**
ASCII characters can be represented in multiple ways:
- Decimal numbers (0-127)
- Binary (7-bit or 8-bit)
- Hexadecimal (00-7F)
- Octal (000-177)

For example, the lowercase letter 'm' is represented as:
| Format | Representation |
|--------|----------------|
| Decimal | 109 |
| Binary (7-bit) | 1101101 |
| Binary (8-bit) | 01101101 |
| Hexadecimal | 6D |
| Octal | 155 |

## ASCII Content
The 128 ASCII characters are divided into several categories:

**Control characters (0-31 and 127):**
- Non-printing characters used for controlling devices
- Examples: Null, Backspace, Line Feed, Carriage Return

**Printable characters (32-126):**
- Space (32)
- Punctuation marks and symbols (33-47, 58-64, 91-96, 123-126)
- Numbers 0-9 (48-57)
- Uppercase letters A-Z (65-90)
- Lowercase letters a-z (97-122)

**Notable features:**
- Uppercase and lowercase letters are 32 positions apart
- This allows for easy case conversion by flipping a single bit[2]

## ASCII Limitations
While ASCII was groundbreaking when introduced, it has several limitations in modern computing:

1. **Limited character set:** With only 128 characters, ASCII cannot represent many symbols, characters from non-English alphabets, or emoji[3].

2. **Language restrictions:** ASCII primarily supports English, making it inadequate for most world languages[3].

3. **No formatting:** ASCII is plain text only, with no built-in support for text formatting or styles.

4. **Inconsistent extended versions:** Various 8-bit extensions of ASCII (like ISO-8859 series) were created to support more characters, but these are not universally compatible[4].

5. **Modern replacements:** Unicode, particularly UTF-8 encoding, has largely superseded ASCII in modern computing due to its vastly expanded character set and backward compatibility with ASCII[2].

## References
1. AB, I., & Http://www.injosoft.se. (n.d.). ASCII frequently asked questions (FAQ). ASCII table - Table of ASCII codes, characters and symbols. https://www.ascii-code.com/faq
2. ASCII. (2023, August 20). Wikipedia, the free encyclopedia. Retrieved September 9, 2024, from https://en.wikipedia.org/wiki/ASCII
3. What is ASCII (American Standard Code for Information Interchange)? (2021, September 9). WhatIs.com. https://www.techtarget.com/whatis/definition/ASCII-American-Standard-Code-for-Information-Interchange
4. Limitations of enhanced ASCII. (2024, May 22). IBM - United States. https://www.ibm.com/docs/en/zos/3.1.0?topic=bl-limitations-enhanced-ascii
5. Characters - Data representation - Higher computing science revision - BBC bitesize. (2015, April 1). BBC Bitesize. https://www.bbc.co.uk/bitesize/guides/zsnbr82/revision/5
