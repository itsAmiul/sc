CREATE DATABASE IF NOT EXISTS Wikis;
USE Wikis;


-- Role Table 
CREATE TABLE role (
    roleName VARCHAR(50) PRIMARY KEY NOT NULL
);

-- Users Table 
CREATE TABLE users (
    UserId VARCHAR(255) PRIMARY KEY NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL,
    addDate DATETIME NOT NULL,
    lastLoginDate DATETIME NOT NULL,
    picture VARCHAR(255) NOT NULL,
    FOREIGN KEY (role) REFERENCES role(roleName) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Categories Table
CREATE TABLE categories (
    categoryId VARCHAR(255) PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(255) NOT NULL,
    picture VARCHAR(50) NOT NULL,
    addDate DATETIME NOT NULL
);

-- Tags Table 
CREATE TABLE tags (
    tagId VARCHAR(255) PRIMARY KEY NOT NULL ,
    name VARCHAR(50) NOT NULL,
    addDate DATETIME NOT NULL
);

-- Wikis Table 
CREATE TABLE wikis (
    wikiId VARCHAR(255) PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    content VARCHAR(255) NOT NULL,
    picture VARCHAR(255) NOT NULL,
    categoryId VARCHAR(255) NOT NULL,
    addDate DATETIME NOT NULL,
    addedBy VARCHAR(255) NOT NULL,
    archived DATETIME NULL,
    FOREIGN KEY (categoryId) REFERENCES categories(categoryId) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (addedBy) REFERENCES users(UserId) ON UPDATE CASCADE ON DELETE CASCADE
);

-- TagsOf Wiki Table
CREATE TABLE tagsOfWiki (
    id VARCHAR(255) PRIMARY KEY NOT NULL,
    wikiId VARCHAR(255) NOT NULL,
    tagId VARCHAR(255) NOT NULL,
    FOREIGN KEY (wikiId) REFERENCES wikis(wikiId) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (tagId) REFERENCES tags(tagId) ON UPDATE CASCADE ON DELETE CASCADE
);