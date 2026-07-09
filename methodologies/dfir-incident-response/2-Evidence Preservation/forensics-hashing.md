[6/10/2026 3:56 PM]
# forensics-hashing
Welcome to the Hashing resource channel. Hashing is the bedrock of data integrity in digital forensics, cybersecurity, and cryptography. This guide covers how it works, why we use it, and the algorithms you need to know.

## What is Hashing?
A cryptographic hash function is a mathematical algorithm that takes an input of any size (a single word, a file, or an entire hard drive) and converts it into a fixed-size string of characters. This output is called a hash, hash value, or digital fingerprint.

Think of it like a human fingerprint: just as a fingerprint uniquely identifies a person without revealing their entire biological structure, a hash uniquely identifies a piece of data.
```
[ Input Data ] ───► [ Hash Function ] ───► [ Unique Fixed-Length Hash ]
```

## The 4 Golden Rules of Hashing
For a hash function to be useful in security and forensics, it must follow four strict rules:

1. Deterministic
The same input will always produce the exact same hash output, no matter how many millions of times you run it through the algorithm.

2. One-Way (Irreversible)
Hashing is a one-way street. You can easily generate a hash from a file, but it is mathematically impossible to reverse the process and reconstruct the original file using only the hash value.

3. Fixed Output Length
Regardless of whether the input is a 5-letter password or a 2-terabyte movie file, the resulting hash will always be the exact same length (e.g., 64 characters for SHA-256).

4. The Avalanche Effect
If you change even a single character or a single bit in the source file, the resulting hash changes completely and drastically. This makes tampering instantly obvious.

### Example of the Avalanche Effect (using SHA-256):
- Input: Hello World
  👉 Hash: a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e

- Input: hello World (changed 'H' to lowercase) >   👉 Hash: 2251a3d90fc920404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e... (completely different!)

## Common Hashing Algorithms
Not all hashes are created equal. Over time, older algorithms have been broken as computers became faster, leading to newer, more secure standards.
- **MD5,128-bit**
   - Security Status:❌ Broken
   - "Still used for quick file integrity checks, but vulnerable to ""collisions"" (two different files generating the same hash)."
- **SHA-1,160-bit**
   - Security Status:❌ Deprecated
   - Legacy systems. No longer considered secure against well-funded attackers.
- **SHA-256,256-bit**
   - Security Status:Secure
   - "The current industry standard for forensics, digital signatures, and blockchain validation."
- **SHA-3**
   - Variable, Security
   - Status: Highly Secure
   - "The latest cryptographic standard, designed with a completely different internal structure than SHA-2."
