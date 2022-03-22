SELECT 
ROUND(MIN(Planos.valor), 2) AS "faturamento_minimo",
ROUND(MAX(Planos.valor), 2) AS "faturamento_maximo",
ROUND(AVG(Planos.valor), 2) AS "faturamento_medio",
ROUND(SUM(Planos.valor), 2) AS "faturamento_total"
FROM Planos
INNER JOIN Usuarios
ON Usuarios.plano_id = Planos.plano_id;