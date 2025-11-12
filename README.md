# 🎓 Student Course Management System (PostgreSQL Project)

A relational database system built using **PostgreSQL** to manage students, instructors, courses, and enrollments.  
Includes analytical SQL queries for academic insights such as top-performing students, department GPAs, and instructor workloads.

---

## 📂 Project Structure

| File | Description |
|------|--------------|
| `schema.sql` | Defines all tables, keys, and constraints |
| `data.sql` | Populates the database with realistic sample data |
| `queries.sql` | Contains analytical SQL queries and reports |
| `views.sql` | Defines a view (`StudentPerformance`) for easier access |
| `README.md` | Documentation and project overview |

---

## 🧠 Concepts Covered
- Primary & Foreign Keys  
- Joins (INNER, LEFT)  
- Aggregate Functions (`AVG`, `COUNT`, `GROUP BY`)  
- Subqueries  
- Views  
- Constraints & Data Integrity (`CHECK`, `NOT NULL`, `ON DELETE`)

---

## 🧰 Tools Used
- PostgreSQL 16  
- Visual Studio Code with PostgreSQL extension  
- Git & GitHub for version control  

---

## 📊 Example Output

| student | course_name | grade |
|----------|--------------|-------|
| Alice | Algorithms | A |
| Bob | Quantum Mechanics | B |

---

## 🚀 How to Run

1. Open PostgreSQL (or VS Code with Postgres extension)  
2. Run `schema.sql` to create all tables  
3. Run `data.sql` to insert sample data  
4. Run `queries.sql` for analysis queries  
5. View reports easily using:
   ```sql
   SELECT * FROM StudentPerformance;
