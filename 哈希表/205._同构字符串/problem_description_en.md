# Isomorphic Strings

**Problem ID**: 205

**Difficulty**: Easy

**Tags**: Hash Table, String

**Acceptance Rate**: 49.3%

**Problem Link**: https://leetcode.cn/problems/isomorphic-strings/

---

## Problem Description

Given two strings s and t, determine if they are isomorphic.

Two strings s and t are isomorphic if the characters in s can be replaced to get t.

All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

Example 1:

Input: s = "egg", t = "add"

Output: true

Explanation:

The strings s and t can be made identical by:

	Mapping &#39;e&#39; to &#39;a&#39;.
	Mapping &#39;g&#39; to &#39;d&#39;.

Example 2:

Input: s = "foo", t = "bar"

Output: false

Explanation:

The strings s and t can not be made identical as &#39;o&#39; needs to be mapped to both &#39;a&#39; and &#39;r&#39;.

Example 3:

Input: s = "paper", t = "title"

Output: true

Constraints:

	1 <= s.length <= 5 * 104
	t.length == s.length
	s and t consist of any valid ascii character.