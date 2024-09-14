CREATE DATABASE seo_keyword_analysis;
USE seo_keyword_analysis;

CREATE TABLE Keywords (
    keyword_id INT AUTO_INCREMENT PRIMARY KEY,
    keyword VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE SEO_Project (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    keyword_id INT,
    start_date DATE,
    end_date DATE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (keyword_id) REFERENCES Keywords(keyword_id)
);

CREATE TABLE Search_Volume (
    volume_id INT AUTO_INCREMENT PRIMARY KEY,
    keyword_id INT,
    month_year DATE,
    search_volume INT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (keyword_id) REFERENCES Keywords(keyword_id)
);

CREATE TABLE Competition (
    competition_id INT AUTO_INCREMENT PRIMARY KEY,
    keyword_id INT,
    competition_level VARCHAR(50),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (keyword_id) REFERENCES Keywords(keyword_id)
);

CREATE TABLE Trend (
    trend_id INT AUTO_INCREMENT PRIMARY KEY,
    keyword_id INT,
    trend_data JSON,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (keyword_id) REFERENCES Keywords(keyword_id)
);
