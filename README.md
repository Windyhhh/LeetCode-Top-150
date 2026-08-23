# 💻 LeetCode Top 150 | LeetCode 面试经典 150 题

> **Complete solutions for LeetCode Top 150 Interview Questions. Covers arrays, strings, linked lists, trees, graphs, dynamic programming, backtracking, and more. Each solution includes explanation and complexity analysis.**
>
> LeetCode 面试经典 150 题完整题解。覆盖数组、字符串、链表、树、图、动态规划、回溯等。每题包含思路解析和复杂度分析。

---

## 📚 Categories | 题目分类

| Category | Count | Topics |
|----------|-------|--------|
| **Array / String** | ~30 | Two pointers, sliding window, prefix sum |
| **Two Pointers** | ~10 | Fast/slow, left/right |
| **Sliding Window** | ~10 | Fixed/variable window |
| **Matrix** | ~5 | 2D traversal, rotation |
| **Hashmap** | ~15 | Counting, grouping |
| **Intervals** | ~5 | Merge, insert, overlap |
| **Stack** | ~10 | Monotonic stack, parentheses |
| **Linked List** | ~10 | Reverse, merge, cycle |
| **Binary Tree** | ~20 | Traversal, BFS/DFS, LCA |
| **Binary Search** | ~10 | Search, boundary |
| **Heap** | ~5 | Top K, median |
| **Backtracking** | ~10 | Permutations, subsets |
| **DP** | ~20 | 1D/2D, knapsack, LIS |
| **Graph** | ~10 | BFS/DFS, shortest path |
| **Bit Manipulation** | ~5 | XOR, masks |

---

## 🚀 Usage | 使用

```bash
# Browse by category
# Each file: problem_number_problem_name.py

# Run a specific solution
python solutions/001_two_sum.py
```

---

## 📝 Format | 格式

Each solution file includes:
```python
"""
Problem: Two Sum
Difficulty: Easy
Time: O(n)
Space: O(n)
Idea: Hashmap for complement lookup
"""
class Solution:
    def twoSum(self, nums, target):
        seen = {}
        for i, num in enumerate(nums):
            if target - num in seen:
                return [seen[target - num], i]
            seen[num] = i
```

---

## 📄 License | 许可证

MIT License.

[GitHub](https://github.com/Windyhhh/LeetCode-Top-150)
