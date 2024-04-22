The Vigenère cipher is a method of encrypting alphabetic text by using a simple form of polyalphabetic substitution. This means that the cipher uses multiple substitution alphabets. It was originally described by Giovan Battista Bellaso in 1553, but it was later misattributed to Blaise de Vigenère in the 19th century, hence the name.

In a Vigenère cipher, a keyword is used to determine the shift for each letter in the plaintext. The keyword is repeated as many times as necessary to match the length of the plaintext. Each letter in the keyword corresponds to a shift value, and these shift values dictate how much each letter of the plaintext should be shifted in the alphabet.

Here's a basic example:

1. Choose a keyword, such as "KEY".
2. Repeat the keyword to match the length of the plaintext, for example, "KEYKEYKEY".
3. Convert both the plaintext and the repeated keyword into numbers, with "A" being 0, "B" being 1, and so on.
4. Add the corresponding numbers of the plaintext and the keyword, applying modular arithmetic (wrapping around the alphabet if needed).
5. Convert the resulting numbers back into letters.

For example, encrypting the plaintext "HELLO" with the keyword "KEY" would proceed as follows:

Plaintext:   H   E   L   L   O
Keyword:     K   E   Y   K   E
Encrypted:   R   I   X   Q   W

Decryption is performed in a similar manner, using the same keyword to reverse the process. Vigenère cipher was considered very secure for a long time because it was resistant to frequency analysis, the common attack against simple substitution ciphers, due to the varying shifts. However, with the advent of computers, it became vulnerable to more sophisticated cryptanalysis techniques. ()