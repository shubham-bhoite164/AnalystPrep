-- Original Query
CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

-- To update the view
CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;

-- Another method
ALTER VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

-- Dropping View
DROP VIEW ordered_series;