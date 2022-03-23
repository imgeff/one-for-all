SELECT 
cancao AS "nome_musica",
	CASE
  		WHEN cancao = "Without My Streets" THEN REPLACE(cancao, "Streets", "Code Review")
  		WHEN cancao = "Dance With Her Own" THEN REPLACE(cancao, "Her Own", "Trybe")
  		WHEN cancao = "Troubles Of My Inner Fire" THEN REPLACE(cancao, "Inner Fire", "Project")
  		WHEN cancao = "Let's Be Silly" THEN REPLACE(cancao, "Silly", "Nice")
  		WHEN cancao = "Magic Circus" THEN REPLACE(cancao, "Circus", "Pull Request")
  	END AS "novo_nome"
FROM Cancoes
WHERE cancao IN("Dance With Her Own", "Let's Be Silly", "Magic Circus", "Troubles Of My Inner Fire", "Without My Streets")
ORDER BY cancao;