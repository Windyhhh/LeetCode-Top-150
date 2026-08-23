# 💻 LeetCode 面试经典 150 题 | LeetCode Top 150 Interview Questions

> **LeetCode 面试经典 150 题完整题解——按题型分类、多种解法、复杂度分析、面试技巧，打造你的算法刷题宝典。**
>
> *Complete solutions for LeetCode Top 150 Interview Questions — categorized by type, multiple approaches, complexity analysis, interview tips, your ultimate algorithm study guide.*

---

## ⭐ 核心卖点 | Why Star This

| 卖点 | Feature | 一句话 |
|------|---------|--------|
| 📚 **150 题全覆盖** | Full Coverage | LeetCode 面试经典 150 题完整题解，无遗漏 |
| 🗂️ **题型分类** | Categorized | 按数组、链表、树、图、动态规划等 15 大题型分类 |
| 🔄 **多种解法** | Multiple Solutions | 每道题提供暴力、优化、最优多种解法对比 |
| ⏱️ **复杂度分析** | Complexity | 时间/空间复杂度详细分析，渐进式优化 |
| 🎯 **面试技巧** | Interview Tips | 每类题型总结解题模板和面试高频考点 |

---

## 🏆 技术栈 | Tech Stack

![Python](https://img.shields.io/badge/Python-3.8+-blue?logo=python)
![Java](https://img.shields.io/badge/Java-8+-orange?logo=openjdk)
![C++](https://img.shields.io/badge/C++-17+-blue?logo=cplusplus)
![Go](https://img.shields.io/badge/Go-1.18+-cyan?logo=go)
![LeetCode](https://img.shields.io/badge/LeetCode-150-yellow?logo=leetcode)

---

## 📊 题型分布 | Problem Categories

| 题型 | 题数 | 难度分布 | 核心考点 |
|------|------|---------|---------|
| 📊 数组/字符串 | 25 | 简单10/中等12/困难3 | 双指针、滑动窗口、前缀和 |
| 🔗 链表 | 12 | 简单4/中等7/困难1 | 快慢指针、反转、合并 |
| 🌳 二叉树 | 18 | 简单5/中等10/困难3 | 递归、遍历、BST、路径 |
| 📈 动态规划 | 20 | 简单3/中等12/困难5 | 状态定义、转移方程、优化 |
| 🔍 二分查找 | 8 | 简单2/中等5/困难1 | 边界处理、旋转数组 |
| 🗂️ 哈希表 | 10 | 简单4/中等5/困难1 | 去重、计数、前缀和 |
| 📚 栈/队列 | 10 | 简单3/中等6/困难1 | 单调栈、括号匹配 |
| 🧮 回溯 | 8 | 简单1/中等5/困难2 | 排列组合、子集、N皇后 |
| 🌐 图 | 8 | 简单1/中等5/困难2 | BFS/DFS、拓扑排序、最短路径 |
| 🎲 贪心 | 8 | 简单2/中等5/困难1 | 区间调度、跳跃游戏 |
| 🧩 位运算 | 5 | 简单2/中等2/困难1 | 异或、状态压缩 |
| 📐 数学 | 5 | 简单2/中等2/困难1 | 数论、组合数学 |
| 🎯 设计题 | 5 | 简单0/中等3/困难2 | LRU、Trie、数据流 |
| 🔄 排序 | 3 | 简单1/中等1/困难1 | 快速选择、归并 |
| 📊 其他 | 5 | 简单1/中等3/困难1 | 随机化、并查集 |

---

## 🚀 快速开始 | Quick Start

```bash
git clone https://github.com/Windyhhh/LeetCode-Top-150.git
cd LeetCode-Top-150

# 查看题目列表
cat README.md | grep "##"

# 按题型浏览
ls categories/

# 查看某道题题解
cat solutions/001-two-sum.md

# 运行 Python 解法
python solutions/001-two-sum.py

# 运行 Java 解法
javac solutions/001-two-sum.java && java TwoSum

# 运行 C++ 解法
g++ -std=c++17 solutions/001-two-sum.cpp -o two_sum && ./two_sum
```

---

## 📂 项目结构 | Project Structure

```
LeetCode-Top-150/
├── README.md                    # 总览 + 学习路线
├── categories/                  # 按题型分类
│   ├── array-string/           # 数组/字符串
│   ├── linked-list/            # 链表
│   ├── binary-tree/            # 二叉树
│   ├── dynamic-programming/    # 动态规划
│   ├── binary-search/          # 二分查找
│   ├── hash-table/             # 哈希表
│   ├── stack-queue/            # 栈/队列
│   ├── backtracking/           # 回溯
│   ├── graph/                  # 图
│   ├── greedy/                 # 贪心
│   ├── bit-manipulation/       # 位运算
│   ├── math/                   # 数学
│   ├── design/                 # 设计题
│   └── sorting/                # 排序
├── solutions/                   # 题解 (按编号)
│   ├── 001-two-sum.md          # 每道题独立 Markdown
│   ├── 001-two-sum.py          # Python 解法
│   ├── 001-two-sum.java        # Java 解法
│   ├── 001-two-sum.cpp         # C++ 解法
│   ├── 002-add-two-numbers.md
│   └── ...
├── templates/                   # 解题模板
│   ├── two-pointers.md         # 双指针模板
│   ├── sliding-window.md        # 滑动窗口模板
│   ├── binary-search.md         # 二分查找模板
│   ├── dfs-bfs.md              # DFS/BFS 模板
│   ├── dp-template.md           # 动态规划模板
│   ├── backtracking.md          # 回溯模板
│   └── monotonic-stack.md       # 单调栈模板
├── study-plan/                  # 学习计划
│   ├── 30-days-plan.md         # 30天刷题计划
│   ├── 60-days-plan.md         # 60天刷题计划
│   └── interview-cram.md       # 面试突击计划
├── cheatsheets/                 # 速查表
│   ├── complexity-cheatsheet.md # 复杂度速查
│   ├── pattern-cheatsheet.md    # 题型模式速查
│   └── python-cheatsheet.md     # Python 语法速查
└── docs/
    ├── interview-tips.md        # 面试技巧
    ├── complexity-analysis.md   # 复杂度分析指南
    └── problem-solving-methodology.md # 解题方法论
```

---

## 🔬 题解示例 | Solution Example

### 1. 两数之和 | Two Sum

**题目描述**：给定一个整数数组 `nums` 和一个整数目标值 `target`，请你在该数组中找出和为目标值 `target` 的那两个整数，并返回它们的数组下标。

**难度**：🟢 简单 | **标签**：数组、哈希表

#### 解法一：暴力枚举 | Brute Force

```python
def twoSum(nums: List[int], target: int) -> List[int]:
    n = len(nums)
    for i in range(n):
        for j in range(i + 1, n):
            if nums[i] + nums[j] == target:
                return [i, j]
    return []
```

- ⏱️ 时间复杂度：O(n²) — 双重循环
- 📦 空间复杂度：O(1) — 常数空间

#### 解法二：哈希表 | Hash Table (最优)

```python
def twoSum(nums: List[int], target: int) -> List[int]:
    hashmap = {}
    for i, num in enumerate(nums):
        complement = target - num
        if complement in hashmap:
            return [hashmap[complement], i]
        hashmap[num] = i
    return []
```

- ⏱️ 时间复杂度：O(n) — 一次遍历
- 📦 空间复杂度：O(n) — 哈希表存储

#### 解题思路 | Approach

1. **暴力法**：双重循环遍历所有数对，时间复杂度 O(n²)
2. **哈希表优化**：遍历数组时，用哈希表记录已访问元素及其下标
3. 对于当前元素 `num`，检查 `target - num` 是否在哈希表中
4. 如果存在，直接返回两个下标；否则将当前元素存入哈希表

#### 面试技巧 | Interview Tips

- 哈希表是空间换时间的经典应用
- 注意返回的是下标而非值
- 可以假设每个输入只对应一个答案
- 同一元素不能重复使用

---

### 2. 最长回文子串 | Longest Palindromic Substring

**题目描述**：给你一个字符串 `s`，找到 `s` 中最长的回文子串。

**难度**：🟡 中等 | **标签**：字符串、动态规划、中心扩展

#### 解法一：动态规划 | DP

```python
def longestPalindrome(s: str) -> str:
    n = len(s)
    if n < 2:
        return s
    
    # dp[i][j] 表示 s[i:j+1] 是否为回文串
    dp = [[False] * n for _ in range(n)]
    max_len = 1
    start = 0
    
    # 单个字符都是回文
    for i in range(n):
        dp[i][i] = True
    
    # 从长度为2开始枚举
    for length in range(2, n + 1):
        for i in range(n - length + 1):
            j = i + length - 1
            if s[i] == s[j]:
                if length == 2 or dp[i + 1][j - 1]:
                    dp[i][j] = True
                    if length > max_len:
                        max_len = length
                        start = i
    
    return s[start:start + max_len]
```

- ⏱️ 时间复杂度：O(n²)
- 📦 空间复杂度：O(n²)

#### 解法二：中心扩展 | Center Expansion (最优)

```python
def longestPalindrome(s: str) -> str:
    if not s:
        return ""
    
    def expand_around_center(left: int, right: int) -> str:
        while left >= 0 and right < len(s) and s[left] == s[right]:
            left -= 1
            right += 1
        return s[left + 1:right]
    
    result = ""
    for i in range(len(s)):
        # 奇数长度回文
        odd = expand_around_center(i, i)
        # 偶数长度回文
        even = expand_around_center(i, i + 1)
        
        if len(odd) > len(result):
            result = odd
        if len(even) > len(result):
            result = even
    
    return result
```

- ⏱️ 时间复杂度：O(n²)
- 📦 空间复杂度：O(1) — 常数空间，优于 DP

#### 解题思路 | Approach

1. **动态规划**：`dp[i][j]` 表示子串 `s[i:j+1]` 是否为回文
2. 状态转移：`dp[i][j] = (s[i] == s[j]) and (j - i < 2 or dp[i+1][j-1])`
3. **中心扩展**：枚举每个可能的回文中心，向两边扩展
4. 回文中心有两种：奇数长度（一个字符）和偶数长度（两个字符）
5. 中心扩展法空间复杂度更优，是面试推荐解法

---

## 📐 解题模板 | Solution Templates

### 双指针模板 | Two Pointers

```python
def two_pointers(arr):
    left, right = 0, len(arr) - 1
    while left < right:
        # 根据条件移动指针
        if condition:
            left += 1
        else:
            right -= 1
    return result
```

**适用场景**：有序数组求和、反转字符串、回文判断、容器盛水

### 滑动窗口模板 | Sliding Window

```python
def sliding_window(s):
    left = 0
    window = {}
    result = 0
    
    for right in range(len(s)):
        # 扩大窗口
        char = s[right]
        window[char] = window.get(char, 0) + 1
        
        # 缩小窗口 (满足条件时)
        while condition:
            window[s[left]] -= 1
            if window[s[left]] == 0:
                del window[s[left]]
            left += 1
        
        # 更新结果
        result = max(result, right - left + 1)
    
    return result
```

**适用场景**：最长无重复子串、最小覆盖子串、长度最小子数组

### 二分查找模板 | Binary Search

```python
def binary_search(arr, target):
    left, right = 0, len(arr) - 1
    while left <= right:
        mid = left + (right - left) // 2  # 防止溢出
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    return -1  # 未找到
```

**适用场景**：有序数组查找、搜索插入位置、旋转数组、二分答案

### DFS 模板 | Depth-First Search

```python
def dfs(root):
    if not root:
        return
    
    # 处理当前节点
    process(root)
    
    # 递归遍历子节点
    dfs(root.left)
    dfs(root.right)
```

**适用场景**：二叉树遍历、图的遍历、岛屿问题、路径搜索

### 动态规划模板 | Dynamic Programming

```python
def dp_solution(nums):
    n = len(nums)
    # 1. 定义 dp 数组
    dp = [0] * n
    
    # 2. 初始化
    dp[0] = nums[0]
    
    # 3. 状态转移
    for i in range(1, n):
        dp[i] = max(dp[i-1] + nums[i], nums[i])
    
    # 4. 返回结果
    return max(dp)
```

**适用场景**：最大子数组和、爬楼梯、打家劫舍、最长递增子序列

---

## 📊 复杂度速查 | Complexity Cheatsheet

| 数据结构 | 查找 | 插入 | 删除 | 空间 |
|---------|------|------|------|------|
| 数组 | O(n) | O(n) | O(n) | O(n) |
| 有序数组 | O(log n) | O(n) | O(n) | O(n) |
| 链表 | O(n) | O(1) | O(1) | O(n) |
| 哈希表 | O(1) 平均 | O(1) 平均 | O(1) 平均 | O(n) |
| 二叉搜索树 | O(log n) 平均 | O(log n) 平均 | O(log n) 平均 | O(n) |
| 平衡BST (AVL/红黑) | O(log n) | O(log n) | O(log n) | O(n) |
| 堆 | O(1) 最值 | O(log n) | O(log n) | O(n) |
| Trie | O(k) | O(k) | O(k) | O(n*k) |

| 排序算法 | 最好 | 平均 | 最坏 | 空间 | 稳定 |
|---------|------|------|------|------|------|
| 冒泡排序 | O(n) | O(n²) | O(n²) | O(1) | ✅ |
| 选择排序 | O(n²) | O(n²) | O(n²) | O(1) | ❌ |
| 插入排序 | O(n) | O(n²) | O(n²) | O(1) | ✅ |
| 快速排序 | O(n log n) | O(n log n) | O(n²) | O(log n) | ❌ |
| 归并排序 | O(n log n) | O(n log n) | O(n log n) | O(n) | ✅ |
| 堆排序 | O(n log n) | O(n log n) | O(n log n) | O(1) | ❌ |
| 计数排序 | O(n+k) | O(n+k) | O(n+k) | O(k) | ✅ |
| 桶排序 | O(n+k) | O(n+k) | O(n²) | O(n+k) | ✅ |
| 基数排序 | O(d*(n+k)) | O(d*(n+k)) | O(d*(n+k)) | O(n+k) | ✅ |

---

## 🎯 学习路线 | Study Plan

### 30 天冲刺计划 | 30-Day Cram Plan

| 阶段 | 天数 | 内容 | 题数 |
|------|------|------|------|
| 基础篇 | Day 1-5 | 数组、字符串、链表 | 25 |
| 进阶篇 | Day 6-12 | 哈希表、栈队列、二分查找 | 28 |
| 树与图 | Day 13-18 | 二叉树、图、BFS/DFS | 26 |
| 算法篇 | Day 19-25 | 动态规划、回溯、贪心 | 36 |
| 冲刺篇 | Day 26-30 | 设计题、位运算、综合复习 | 35 |

### 刷题方法论 | Problem-Solving Methodology

1. **先理解题目**：明确输入输出、约束条件、边界情况
2. **想暴力解法**：先想出能 work 的解法，再优化
3. **分析复杂度**：时间/空间复杂度是否满足要求
4. **找优化方向**：哈希表、双指针、二分、排序、DP
5. **写代码**：注意边界条件、变量命名、代码风格
6. **测试用例**：正常用例、边界用例、异常用例
7. **总结归纳**：这道题属于什么题型？有什么通用模板？

---

## 🎤 面试技巧 | Interview Tips

### 面试流程 | Interview Process

1. **澄清问题** (2分钟)：确认输入输出、约束、边界
2. **讲思路** (3分钟)：先说暴力解法，再讲优化思路
3. **写代码** (15-20分钟)：边写边讲，注意代码风格
4. **测试** (3分钟)：用测试用例验证，检查边界
5. **复杂度分析** (2分钟)：时间/空间复杂度

### 常见误区 | Common Mistakes

- ❌ 拿到题就写，不先想清楚思路
- ❌ 只说最优解，不说思考过程
- ❌ 忽略边界条件（空数组、单个元素、负数）
- ❌ 代码写完不测试
- ❌ 复杂度分析错误

### 加分项 | Bonus Points

- ✅ 主动询问约束条件
- ✅ 多种解法对比，分析优劣
- ✅ 代码清晰，变量命名规范
- ✅ 主动测试，发现并修复 bug
- ✅ 能举一反三，扩展到类似题目

---

## 📚 推荐资源 | Recommended Resources

- **LeetCode 官网**：leetcode.cn — 在线刷题平台
- **《算法导论》**：Thomas H. Cormen — 算法经典教材
- **《代码随想录》**：Carl — 中文算法刷题指南
- **NeetCode**：neetcode.io — 算法视频讲解
- **Algorithms, Part I/II**：Coursera 普林斯顿大学算法课

---

## 📄 License

MIT License — 自由使用、修改和分发。

---

> 💡 **150 题完整题解 + 解题模板 + 面试技巧，Star ⭐ 祝你面试顺利拿 Offer！**
