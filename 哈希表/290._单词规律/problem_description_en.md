# Word Pattern

**Problem ID**: 290

**Difficulty**: Easy

**Tags**: Hash Table, String

**Acceptance Rate**: 44.6%

**Problem Link**: https://leetcode.cn/problems/word-pattern/

---

## Problem Description

Given a pattern and a string s, find if s follows the same pattern.

Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s. Specifically:

	Each letter in pattern maps to exactly one unique word in s.
	Each unique word in s maps to exactly one letter in pattern.
	No two letters map to the same word, and no two words map to the same letter.

Example 1:

Input: pattern = "abba", s = "dog cat cat dog"

Output: true

Explanation:

The bijection can be established as:

	&#39;a&#39; maps to "dog".
	&#39;b&#39; maps to "cat".

Example 2:

Input: pattern = "abba", s = "dog cat cat fish"

Output: false

Example 3:

Input: pattern = "aaaa", s = "dog cat cat dog"

Output: false

Constraints:

	1 <= pattern.length <= 300
	pattern contains only lower-case English letters.
	1 <= s.length <= 3000
	s contains only lowercase English letters and spaces &#39; &#39;.
	s does not contain any leading or trailing spaces.
	All the words in s are separated by a single space.