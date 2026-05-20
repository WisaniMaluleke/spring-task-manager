-- ── 1. CLEANUP (Optional for local development safety) ──────────────────
DROP TABLE IF EXISTS tasks;
DROP TABLE IF EXISTS users;

-- ── 2. CREATE USERS TABLE ───────────────────────────────────────────────
CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ── 3. CREATE TASKS TABLE ───────────────────────────────────────────────
CREATE TABLE tasks (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    status VARCHAR(20) NOT NULL DEFAULT 'TODO', -- TODO, IN_PROGRESS, DONE
    priority VARCHAR(20) NOT NULL DEFAULT 'MEDIUM', -- LOW, MEDIUM, HIGH
    due_date TIMESTAMP WITH TIME ZONE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- ── 4. PERFORMANCE INDEXES ──────────────────────────────────────────────
-- Speeds up relational Hibernate/Spring Data JPA queries when fetching user tasks
CREATE INDEX idx_tasks_user_id ON tasks(user_id);
CREATE INDEX idx_tasks_status ON tasks(status);

-- ── 5. SEED INITIAL SAMPLE DATA (For Instant Testing) ──────────────────
INSERT INTO users (username, email, password_hash) VALUES
('wisgeek_admin', 'admin@wisgeek.com', '$2a$10$7v1b3m...假hash...'),
('developer_joe', 'joe@wisgeek.com', '$2a$10$8w2c4n...假hash...');

INSERT INTO tasks (user_id, title, description, status, priority, due_date) VALUES
(1, 'Configure Grafana Loki Stack', 'Set up Promtail log parsing for Docker containers', 'DONE', 'HIGH', NOW()),
(1, 'Verify Database Connections', 'Ensure Spring MVC connects cleanly to wis-postgres container', 'IN_PROGRESS', 'HIGH', NOW() + INTERVAL '2 days'),
(2, 'Write Unit Tests for Task Controller', 'Achieve 80% line coverage for the REST endpoints', 'TODO', 'MEDIUM', NOW() + INTERVAL '5 days');