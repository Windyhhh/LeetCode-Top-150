# 可视化描述语言 (Visualization DSL) 设计

## 概述
设计一套JSON格式的可视化描述语言，用于描述算法执行过程中的数据结构变化和动画效果。

## 基础结构

```json
{
  "metadata": {
    "algorithm": "bubble_sort",
    "dataStructure": "array",
    "complexity": {
      "time": "O(n²)",
      "space": "O(1)"
    }
  },
  "initialState": {
    "data": [64, 34, 25, 12, 22, 11, 90],
    "pointers": {},
    "variables": {}
  },
  "steps": [
    {
      "id": 1,
      "description": "开始第一轮冒泡排序",
      "actions": [...],
      "highlights": [...],
      "annotations": [...]
    }
  ]
}
```

## 数据结构定义

### 1. 数组 (Array)
```json
{
  "type": "array",
  "data": [64, 34, 25, 12, 22, 11, 90],
  "indices": [0, 1, 2, 3, 4, 5, 6],
  "metadata": {
    "name": "arr",
    "size": 7
  }
}
```

### 2. 链表 (LinkedList)
```json
{
  "type": "linkedList",
  "nodes": [
    {
      "id": "node1",
      "value": 1,
      "next": "node2",
      "position": {"x": 100, "y": 200}
    },
    {
      "id": "node2", 
      "value": 2,
      "next": "node3",
      "position": {"x": 200, "y": 200}
    }
  ],
  "head": "node1"
}
```

### 3. 二叉树 (BinaryTree)
```json
{
  "type": "binaryTree",
  "nodes": [
    {
      "id": "root",
      "value": 10,
      "left": "node2",
      "right": "node3",
      "level": 0,
      "position": {"x": 400, "y": 50}
    }
  ],
  "root": "root"
}
```

### 4. 图 (Graph)
```json
{
  "type": "graph",
  "nodes": [
    {
      "id": "A",
      "value": "A",
      "position": {"x": 100, "y": 100}
    }
  ],
  "edges": [
    {
      "from": "A",
      "to": "B",
      "weight": 5,
      "directed": true
    }
  ]
}
```

## 动作类型 (Actions)

### 1. 比较操作
```json
{
  "type": "compare",
  "elements": ["arr[0]", "arr[1]"],
  "result": "greater",
  "duration": 1000
}
```

### 2. 交换操作
```json
{
  "type": "swap",
  "elements": ["arr[0]", "arr[1]"],
  "duration": 1500,
  "animation": "slide"
}
```

### 3. 赋值操作
```json
{
  "type": "assign",
  "target": "arr[2]",
  "value": 42,
  "duration": 800
}
```

### 4. 指针移动
```json
{
  "type": "movePointer",
  "pointer": "left",
  "from": 0,
  "to": 1,
  "duration": 600
}
```

### 5. 节点创建/删除
```json
{
  "type": "createNode",
  "nodeId": "newNode",
  "value": 100,
  "position": {"x": 300, "y": 200},
  "duration": 1000
}
```

### 6. 连接操作
```json
{
  "type": "connect",
  "from": "node1",
  "to": "node2",
  "connectionType": "next",
  "duration": 800
}
```

## 高亮和注释

### 高亮定义
```json
{
  "highlights": [
    {
      "target": "arr[0]",
      "style": "active",
      "color": "#ff6b6b",
      "duration": 1000
    },
    {
      "target": "pointer:left",
      "style": "pulse",
      "color": "#4ecdc4"
    }
  ]
}
```

### 注释定义
```json
{
  "annotations": [
    {
      "target": "arr[0]",
      "text": "当前比较的元素",
      "position": "top",
      "duration": 2000,
      "style": "tooltip"
    }
  ]
}
```

## 完整示例：冒泡排序

```json
{
  "metadata": {
    "algorithm": "bubble_sort",
    "dataStructure": "array",
    "complexity": {
      "time": "O(n²)",
      "space": "O(1)"
    }
  },
  "initialState": {
    "data": {
      "type": "array",
      "data": [64, 34, 25, 12],
      "indices": [0, 1, 2, 3]
    },
    "pointers": {
      "i": {"position": 0, "color": "#ff6b6b"},
      "j": {"position": 0, "color": "#4ecdc4"}
    },
    "variables": {
      "n": 4,
      "swapped": false
    }
  },
  "steps": [
    {
      "id": 1,
      "description": "开始第一轮冒泡，i=0",
      "code_line": 3,
      "actions": [
        {
          "type": "movePointer",
          "pointer": "i",
          "to": 0,
          "duration": 500
        }
      ],
      "highlights": [
        {
          "target": "arr[0]",
          "style": "active",
          "color": "#ff6b6b"
        }
      ],
      "annotations": [
        {
          "target": "pointer:i",
          "text": "外层循环指针",
          "position": "bottom"
        }
      ]
    },
    {
      "id": 2,
      "description": "比较 arr[0] 和 arr[1]",
      "code_line": 5,
      "actions": [
        {
          "type": "compare",
          "elements": ["arr[0]", "arr[1]"],
          "result": "greater",
          "duration": 1000
        }
      ],
      "highlights": [
        {
          "target": "arr[0]",
          "style": "comparing",
          "color": "#ff9f43"
        },
        {
          "target": "arr[1]",
          "style": "comparing", 
          "color": "#ff9f43"
        }
      ],
      "annotations": [
        {
          "target": "arr[0]",
          "text": "64 > 34",
          "position": "top"
        }
      ]
    },
    {
      "id": 3,
      "description": "交换 arr[0] 和 arr[1]",
      "code_line": 6,
      "actions": [
        {
          "type": "swap",
          "elements": ["arr[0]", "arr[1]"],
          "duration": 1500,
          "animation": "slide"
        }
      ],
      "highlights": [
        {
          "target": "arr[0]",
          "style": "swapping",
          "color": "#26de81"
        },
        {
          "target": "arr[1]",
          "style": "swapping",
          "color": "#26de81"
        }
      ]
    }
  ]
}
```

## 样式定义

### 预定义样式
```json
{
  "styles": {
    "active": {
      "border": "2px solid #ff6b6b",
      "backgroundColor": "#ffe0e0",
      "animation": "none"
    },
    "comparing": {
      "border": "2px solid #ff9f43",
      "backgroundColor": "#fff4e6",
      "animation": "pulse"
    },
    "swapping": {
      "border": "2px solid #26de81",
      "backgroundColor": "#e6fff2",
      "animation": "bounce"
    },
    "sorted": {
      "border": "2px solid #4ecdc4",
      "backgroundColor": "#e6fffe",
      "animation": "none"
    }
  }
}
```

## 动画配置

### 动画类型
- `slide`: 滑动动画
- `fade`: 淡入淡出
- `bounce`: 弹跳效果
- `pulse`: 脉冲效果
- `rotate`: 旋转动画
- `scale`: 缩放动画

### 缓动函数
- `linear`: 线性
- `ease-in`: 缓入
- `ease-out`: 缓出
- `ease-in-out`: 缓入缓出
- `bounce`: 弹跳
- `elastic`: 弹性
