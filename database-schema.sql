-- 编程题动态解释网站数据库设计
-- PostgreSQL Schema

-- 题目表
CREATE TABLE problems (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    slug VARCHAR(255) UNIQUE NOT NULL,
    description TEXT NOT NULL,
    difficulty ENUM('easy', 'medium', 'hard') NOT NULL,
    frequency_score INTEGER DEFAULT 0, -- 面试出现频率评分
    acceptance_rate DECIMAL(5,2) DEFAULT 0.0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN DEFAULT true
);

-- 题目标签表
CREATE TABLE tags (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    category VARCHAR(50), -- 如：数据结构、算法类型等
    color VARCHAR(7) DEFAULT '#3B82F6' -- 十六进制颜色
);

-- 题目标签关联表
CREATE TABLE problem_tags (
    problem_id INTEGER REFERENCES problems(id) ON DELETE CASCADE,
    tag_id INTEGER REFERENCES tags(id) ON DELETE CASCADE,
    PRIMARY KEY (problem_id, tag_id)
);

-- 解法表
CREATE TABLE solutions (
    id SERIAL PRIMARY KEY,
    problem_id INTEGER REFERENCES problems(id) ON DELETE CASCADE,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    code TEXT NOT NULL,
    language VARCHAR(20) NOT NULL, -- python, java, javascript等
    time_complexity VARCHAR(50),
    space_complexity VARCHAR(50),
    approach_type ENUM('brute_force', 'optimized', 'optimal') NOT NULL,
    is_primary BOOLEAN DEFAULT false, -- 是否为主要解法
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 可视化配置表
CREATE TABLE visualizations (
    id SERIAL PRIMARY KEY,
    solution_id INTEGER REFERENCES solutions(id) ON DELETE CASCADE,
    visualization_data JSONB NOT NULL, -- 存储可视化描述JSON
    data_structure_type VARCHAR(50) NOT NULL, -- array, linked_list, tree, graph等
    animation_steps JSONB NOT NULL, -- 动画步骤配置
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 测试用例表
CREATE TABLE test_cases (
    id SERIAL PRIMARY KEY,
    problem_id INTEGER REFERENCES problems(id) ON DELETE CASCADE,
    input_data JSONB NOT NULL,
    expected_output JSONB NOT NULL,
    is_example BOOLEAN DEFAULT false, -- 是否为示例用例
    is_hidden BOOLEAN DEFAULT false, -- 是否为隐藏用例
    difficulty_level INTEGER DEFAULT 1, -- 用例难度级别
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 错误案例表
CREATE TABLE error_cases (
    id SERIAL PRIMARY KEY,
    solution_id INTEGER REFERENCES solutions(id) ON DELETE CASCADE,
    error_type ENUM('logic', 'boundary', 'performance', 'syntax') NOT NULL,
    error_code TEXT NOT NULL,
    error_description TEXT NOT NULL,
    correct_approach TEXT,
    test_case_id INTEGER REFERENCES test_cases(id), -- 触发错误的测试用例
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 面试指导表
CREATE TABLE interview_guides (
    id SERIAL PRIMARY KEY,
    problem_id INTEGER REFERENCES problems(id) ON DELETE CASCADE,
    company_focus VARCHAR(100), -- 公司特定指导，如'google', 'facebook'等
    thinking_process TEXT NOT NULL, -- 思考过程指导
    common_questions JSONB, -- 常见追问问题
    time_allocation JSONB, -- 时间分配建议
    coding_tips TEXT,
    optimization_hints TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 用户表（后期扩展）
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    avatar_url VARCHAR(500),
    level INTEGER DEFAULT 1,
    experience_points INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN DEFAULT true
);

-- 用户学习记录表
CREATE TABLE user_progress (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    problem_id INTEGER REFERENCES problems(id) ON DELETE CASCADE,
    status ENUM('not_started', 'in_progress', 'completed') DEFAULT 'not_started',
    attempts INTEGER DEFAULT 0,
    best_time_ms INTEGER, -- 最佳执行时间（毫秒）
    last_attempt_at TIMESTAMP,
    completed_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_id, problem_id)
);

-- AI生成内容缓存表
CREATE TABLE ai_cache (
    id SERIAL PRIMARY KEY,
    cache_key VARCHAR(255) UNIQUE NOT NULL,
    content_type VARCHAR(50) NOT NULL, -- visualization, error_case, interview_guide等
    content JSONB NOT NULL,
    expires_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 创建索引
CREATE INDEX idx_problems_difficulty ON problems(difficulty);
CREATE INDEX idx_problems_frequency ON problems(frequency_score DESC);
CREATE INDEX idx_solutions_problem_id ON solutions(problem_id);
CREATE INDEX idx_solutions_language ON solutions(language);
CREATE INDEX idx_visualizations_solution_id ON visualizations(solution_id);
CREATE INDEX idx_test_cases_problem_id ON test_cases(problem_id);
CREATE INDEX idx_user_progress_user_id ON user_progress(user_id);
CREATE INDEX idx_user_progress_status ON user_progress(status);
CREATE INDEX idx_ai_cache_key ON ai_cache(cache_key);
CREATE INDEX idx_ai_cache_expires ON ai_cache(expires_at);

-- 插入示例数据
INSERT INTO tags (name, category, color) VALUES 
('数组', '数据结构', '#3B82F6'),
('链表', '数据结构', '#10B981'),
('二叉树', '数据结构', '#F59E0B'),
('动态规划', '算法', '#EF4444'),
('双指针', '技巧', '#8B5CF6'),
('滑动窗口', '技巧', '#06B6D4');
