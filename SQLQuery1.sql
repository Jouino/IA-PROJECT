-- Créer la structure de la table
CREATE TABLE final_data (
    [Product name] varchar(255),
    Materials varchar(255),
    [Environmental Score] varchar(255)
);

-- Insérer les données dans la table
INSERT INTO final_data ([Product name], Materials, [Environmental Score])
SELECT M.[Product name], M.Materials, E.[Environmental Score]
FROM Materials$ AS M
INNER JOIN dbo.['Environmental score$'] AS E
ON M.[Product name] = E.[Product name];


SELECT *
FROM final_data;

