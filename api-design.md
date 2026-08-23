# API接口设计文档

## 基础信息
- 基础URL: `https://api.leetcode-visual.com/v1`
- 认证方式: JWT Token
- 响应格式: JSON
- 状态码: 标准HTTP状态码

## 通用响应格式

```json
{
  "success": true,
  "data": {},
  "message": "操作成功",
  "timestamp": "2024-01-01T00:00:00Z"
}
```

## 1. 题目管理 API

### 获取题目列表
```
GET /problems
Query参数:
- page: 页码 (默认1)
- limit: 每页数量 (默认20)
- difficulty: 难度筛选 (easy/medium/hard)
- tags: 标签筛选 (逗号分隔)
- search: 搜索关键词
```

### 获取题目详情
```
GET /problems/{slug}
返回: 题目详情、解法列表、测试用例
```

### 获取题目解法
```
GET /problems/{slug}/solutions
Query参数:
- language: 编程语言筛选
- approach: 解法类型筛选
```

### 获取可视化配置
```
GET /solutions/{id}/visualization
返回: 可视化描述和动画配置
```

## 2. 代码执行 API

### 提交代码执行
```
POST /execute
Body:
{
  "code": "代码内容",
  "language": "python",
  "problem_id": 1,
  "test_cases": [...]
}
```

### 获取执行结果
```
GET /execute/{execution_id}
返回: 执行状态、结果、性能数据
```

## 3. AI服务 API

### 生成可视化描述
```
POST /ai/generate-visualization
Body:
{
  "code": "代码内容",
  "language": "python",
  "data_structure": "array"
}
```

### 生成错误案例
```
POST /ai/generate-errors
Body:
{
  "solution_id": 1,
  "error_types": ["logic", "boundary"]
}
```

### 生成面试指导
```
POST /ai/generate-interview-guide
Body:
{
  "problem_id": 1,
  "company": "google",
  "focus_areas": ["optimization", "edge_cases"]
}
```

## 4. 用户管理 API

### 用户注册
```
POST /auth/register
Body:
{
  "username": "用户名",
  "email": "邮箱",
  "password": "密码"
}
```

### 用户登录
```
POST /auth/login
Body:
{
  "email": "邮箱",
  "password": "密码"
}
```

### 获取用户进度
```
GET /users/progress
Query参数:
- status: 状态筛选
- difficulty: 难度筛选
```

### 更新学习进度
```
PUT /users/progress/{problem_id}
Body:
{
  "status": "completed",
  "execution_time": 1500
}
```

## 5. 内容管理 API

### 创建题目
```
POST /admin/problems
Body:
{
  "title": "题目标题",
  "description": "题目描述",
  "difficulty": "medium",
  "tags": [1, 2, 3]
}
```

### 创建解法
```
POST /admin/solutions
Body:
{
  "problem_id": 1,
  "title": "解法标题",
  "code": "代码内容",
  "language": "python",
  "approach_type": "optimal"
}
```

## 6. 数据统计 API

### 获取题目统计
```
GET /stats/problems
返回: 题目数量、难度分布、标签分布
```

### 获取用户统计
```
GET /stats/users/{user_id}
返回: 完成题目数、正确率、学习时长
```

## 错误处理

### 错误响应格式
```json
{
  "success": false,
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "参数验证失败",
    "details": {
      "field": "email",
      "reason": "邮箱格式不正确"
    }
  },
  "timestamp": "2024-01-01T00:00:00Z"
}
```

### 常见错误码
- `VALIDATION_ERROR`: 参数验证错误
- `AUTHENTICATION_ERROR`: 认证失败
- `AUTHORIZATION_ERROR`: 权限不足
- `RESOURCE_NOT_FOUND`: 资源不存在
- `RATE_LIMIT_EXCEEDED`: 请求频率超限
- `AI_SERVICE_ERROR`: AI服务调用失败
- `CODE_EXECUTION_ERROR`: 代码执行失败

## 限流策略
- 普通用户: 100请求/分钟
- 注册用户: 300请求/分钟
- VIP用户: 1000请求/分钟
- AI服务调用: 10请求/分钟

## 缓存策略
- 题目列表: 缓存5分钟
- 题目详情: 缓存30分钟
- 可视化配置: 缓存1小时
- AI生成内容: 缓存24小时
