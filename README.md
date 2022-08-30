# RunLengthEncode

The algorithm that compress string with repeated symbols. It's executed in O(1):
- "aaaaabbbbbbbbcd" ->"a5b8c1d1"
- "abcaaaaaaaaaaaaaaaaaabbc" -> "a1b1c1a18b2c1"

If the compressed string is longer than the original one, then the original string is output:
- "ab" -> "a1b1" (return "ab")

Wikipedia link: https://en.wikipedia.org/wiki/Run-length_encoding
