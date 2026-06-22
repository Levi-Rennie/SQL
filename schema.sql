-- schema.sql — table definitions for the practice library database

CREATE TABLE members (
    member_id   SERIAL PRIMARY KEY,
    full_name   TEXT NOT NULL,
    email       TEXT NOT NULL UNIQUE,
    joined_on   DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE loans (
    loan_id     SERIAL PRIMARY KEY,
    member_id   INTEGER NOT NULL REFERENCES members(member_id),
    book_title  TEXT NOT NULL,
    borrowed_on DATE NOT NULL,
    due_on      DATE NOT NULL,
    CHECK (due_on > borrowed_on)
);