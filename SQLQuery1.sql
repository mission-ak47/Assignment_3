INSERT INTO dbo.Database_1
SELECT * FROM dbo.Database1$ ;
INSERT INTO dbo.Database_2
SELECT * FROM dbo.Database2$ ;
SELECT * FROM dbo.Database_1;
SELECT * FROM dbo.Database_2;

SELECT dbo.Database_1.revenue, dbo.Database_2.Ticker, dbo.Database_1.sector, dbo.Database_1.rank, dbo.Database_1.company
FROM dbo.Database_1
INNER JOIN dbo.Database_2
ON dbo.Database_1.company=dbo.Database_2.company WHERE dbo.Database_1.rank<100
ORDER BY revenue DESC;

SELECT dbo.Database_1.revenue, dbo.Database_2.Ticker, dbo.Database_1.sector, dbo.Database_1.rank 
FROM dbo.Database_2
FULL OUTER JOIN dbo.Database_1
ON dbo.Database_1.company=dbo.Database_2.company WHERE dbo.Database_1.rank<100 
ORDER BY rank ASC;

SELECT dbo.Database_1.rank, dbo.Database_2.company, dbo.Database_2.CEO, dbo.Database_1.empcount
FROM  dbo.Database_1
INNER JOIN dbo.Database_2
ON dbo.Database_1.company = dbo.Database_2.company WHERE dbo.Database_1.empcount>1000
ORDER BY empcount DESC;

SELECT dbo.Database_1.rank, dbo.Database_1.company, dbo.Database_2.CEO, dbo.Database_2.Market_Cap, dbo.Database_1.profit, dbo.Database_1.empcount
FROM dbo.Database_1
INNER JOIN dbo.Database_2
ON dbo.Database_2.company = dbo.Database_1.company WHERE dbo.Database_2.ceo_woman = 'YES'
ORDER BY rank ASC;

SELECT dbo.Database_1.rank, dbo.Database_1.company,dbo.Database_1.rank_change, dbo.Database_2.CEO, dbo.Database_2.Market_Cap, dbo.Database_1.profit, dbo.Database_1.empcount
FROM dbo.Database_1
INNER JOIN dbo.Database_2
ON dbo.Database_2.company = dbo.Database_1.company WHERE dbo.Database_2.prev_rank > 0 AND dbo.Database_1.rank_change BETWEEN -10 AND 10
ORDER BY rank_change ASC;
