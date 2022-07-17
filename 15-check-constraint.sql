ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive
CHECK (yearly_salary > 0);

