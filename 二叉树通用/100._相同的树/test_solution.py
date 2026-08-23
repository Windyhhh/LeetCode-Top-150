#!/usr/bin/env python3
"""
LeetCode 100. 相同的树 - 测试文件
用于验证算法的正确性
"""

from typing import Optional

# 二叉树节点定义
class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
    
    def __repr__(self):
        return f"TreeNode({self.val})"

class Solution:
    def isSameTree(self, p: Optional[TreeNode], q: Optional[TreeNode]) -> bool:
        """
        判断两棵二叉树是否相同
        
        Args:
            p: 第一棵树的根节点
            q: 第二棵树的根节点
            
        Returns:
            bool: 如果两棵树相同返回True，否则返回False
        """
        # 基础情况：两个节点都为空
        if not p and not q:
            return True
        
        # 一个为空，一个不为空
        if not p or not q:
            return False
        
        # 两个节点都不为空，比较值
        if p.val != q.val:
            return False
        
        # 递归比较左右子树
        return self.isSameTree(p.left, q.left) and self.isSameTree(p.right, q.right)

def build_tree_from_list(arr):
    """
    从列表构建二叉树（层序遍历）
    
    Args:
        arr: 节点值列表，None表示空节点
        
    Returns:
        TreeNode: 树的根节点
    """
    if not arr or arr[0] is None:
        return None
    
    root = TreeNode(arr[0])
    queue = [root]
    i = 1
    
    while queue and i < len(arr):
        node = queue.pop(0)
        
        # 左子节点
        if i < len(arr) and arr[i] is not None:
            node.left = TreeNode(arr[i])
            queue.append(node.left)
        i += 1
        
        # 右子节点
        if i < len(arr) and arr[i] is not None:
            node.right = TreeNode(arr[i])
            queue.append(node.right)
        i += 1
    
    return root

def print_tree(root, level=0, prefix="Root: "):
    """
    打印二叉树结构
    """
    if root is not None:
        print(" " * (level * 4) + prefix + str(root.val))
        if root.left is not None or root.right is not None:
            if root.left:
                print_tree(root.left, level + 1, "L--- ")
            else:
                print(" " * ((level + 1) * 4) + "L--- None")
            if root.right:
                print_tree(root.right, level + 1, "R--- ")
            else:
                print(" " * ((level + 1) * 4) + "R--- None")

def test_solution():
    """
    测试解决方案
    """
    solution = Solution()
    
    # 测试用例
    test_cases = [
        {
            "name": "示例1 - 相同的树",
            "tree1": [1, 2, 3],
            "tree2": [1, 2, 3],
            "expected": True
        },
        {
            "name": "示例2 - 结构不同",
            "tree1": [1, 2],
            "tree2": [1, None, 2],
            "expected": False
        },
        {
            "name": "示例3 - 值不同",
            "tree1": [1, 2, 1],
            "tree2": [1, 1, 2],
            "expected": False
        },
        {
            "name": "边界情况 - 都为空",
            "tree1": [],
            "tree2": [],
            "expected": True
        },
        {
            "name": "边界情况 - 一个为空",
            "tree1": [1],
            "tree2": [],
            "expected": False
        },
        {
            "name": "单节点相同",
            "tree1": [1],
            "tree2": [1],
            "expected": True
        },
        {
            "name": "单节点不同",
            "tree1": [1],
            "tree2": [2],
            "expected": False
        }
    ]
    
    print("🧪 开始测试 LeetCode 100. 相同的树")
    print("=" * 50)
    
    passed = 0
    total = len(test_cases)
    
    for i, test_case in enumerate(test_cases, 1):
        print(f"\n📋 测试用例 {i}: {test_case['name']}")
        
        # 构建树
        tree1 = build_tree_from_list(test_case['tree1']) if test_case['tree1'] else None
        tree2 = build_tree_from_list(test_case['tree2']) if test_case['tree2'] else None
        
        # 打印树结构
        print(f"树1: {test_case['tree1']}")
        if tree1:
            print_tree(tree1)
        else:
            print("    (空树)")
            
        print(f"树2: {test_case['tree2']}")
        if tree2:
            print_tree(tree2)
        else:
            print("    (空树)")
        
        # 执行测试
        result = solution.isSameTree(tree1, tree2)
        expected = test_case['expected']
        
        # 验证结果
        if result == expected:
            print(f"✅ 通过: 结果 = {result}")
            passed += 1
        else:
            print(f"❌ 失败: 期望 = {expected}, 实际 = {result}")
    
    print("\n" + "=" * 50)
    print(f"📊 测试结果: {passed}/{total} 通过")
    
    if passed == total:
        print("🎉 所有测试用例通过！")
    else:
        print(f"⚠️  有 {total - passed} 个测试用例失败")

if __name__ == "__main__":
    test_solution()
