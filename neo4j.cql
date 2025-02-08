// Cluster 1  
// Load statement
UNWIND $relRecords AS relRecord
MATCH (source: `Cluster 1` { `Cluster`: toInteger(trim(relRecord.`Cluster`)) })
MATCH (target: `Client` { `Client_number`: toInteger(trim(relRecord.`Client_number`)) })
MERGE (source)-[r: `Contient`]->(target);

// Key statement
CREATE CONSTRAINT `Cluster_Cluster_1_uniq` IF NOT EXISTS
FOR (n: `Cluster 1`)
REQUIRE (n.`Cluster`) IS UNIQUE;

// Load statement
UNWIND $nodeRecords AS nodeRecord
WITH *
WHERE NOT nodeRecord.`Cluster` IN $idsToSkip AND NOT toInteger(trim(nodeRecord.`Cluster`)) IS NULL
AND nodeRecord.`Cluster` = $filterExactMatch
MERGE (n: `Cluster 1` { `Cluster`: toInteger(trim(nodeRecord.`Cluster`)) });

// Key statement
CREATE CONSTRAINT `Client_number_Client_uniq` IF NOT EXISTS
FOR (n: `Client`)
REQUIRE (n.`Client_number`) IS UNIQUE;


// Load statement
UNWIND $nodeRecords AS nodeRecord
WITH *
WHERE NOT nodeRecord.`Client_number` IN $idsToSkip AND NOT toInteger(trim(nodeRecord.`Client_number`)) IS NULL
MERGE (n: `Client` { `Client_number`: toInteger(trim(nodeRecord.`Client_number`)) })
SET n.`total_nb_recharge` = toFloat(trim(nodeRecord.`total_nb_recharge`))
SET n.`total_rechage` = toFloat(trim(nodeRecord.`total_rechage`))
SET n.`total_u_data` = toFloat(trim(nodeRecord.`total_u_data`))
SET n.`total_u_out` = toFloat(trim(nodeRecord.`total_u_out`))
SET n.`total_u_in` = toFloat(trim(nodeRecord.`total_u_in`))
SET n.`nb_cont_out` = toFloat(trim(nodeRecord.`nb_cont_out`))
SET n.`nb_cont_in` = toFloat(trim(nodeRecord.`nb_cont_in`))
SET n.`nb_cell_visite_out` = toFloat(trim(nodeRecord.`nb_cell_visite_out`))
SET n.`nb_cell_visite_in` = toFloat(trim(nodeRecord.`nb_cell_visite_in`))
SET n.`nbr_contrat` = toFloat(trim(nodeRecord.`nbr_contrat`))
SET n.`nbr_actif` = toFloat(trim(nodeRecord.`nbr_actif`))
SET n.`flag_churn` = toFloat(trim(nodeRecord.`flag_churn`))
SET n.`Cluster` = toInteger(trim(nodeRecord.`Cluster`))
SET n.`entity_code` = nodeRecord.`entity_code`
SET n.`entity_type_name` = nodeRecord.`entity_type_name`;

// Cluster 2 : 
// Load statement
UNWIND $relRecords AS relRecord
MATCH (source: `Cluster 2` { `Cluster`: toInteger(trim(relRecord.`Cluster`)) })
MATCH (target: `Client` { `Client_number`: toInteger(trim(relRecord.`Client_number`)) })
MERGE (source)-[r: `Contient`]->(target);

// Key statement
CREATE CONSTRAINT `Cluster_Cluster_2_uniq` IF NOT EXISTS
FOR (n: `Cluster 2`)
REQUIRE (n.`Cluster`) IS UNIQUE;

// Load statement
UNWIND $nodeRecords AS nodeRecord
WITH *
WHERE NOT nodeRecord.`Cluster` IN $idsToSkip AND NOT toInteger(trim(nodeRecord.`Cluster`)) IS NULL
AND nodeRecord.`Cluster` = $filterExactMatch
MERGE (n: `Cluster 2` { `Cluster`: toInteger(trim(nodeRecord.`Cluster`)) });

// Key statement
CREATE CONSTRAINT `Client_number_Client_uniq` IF NOT EXISTS
FOR (n: `Client`)
REQUIRE (n.`Client_number`) IS UNIQUE;

// Load statement
UNWIND $nodeRecords AS nodeRecord
WITH *
WHERE NOT nodeRecord.`Client_number` IN $idsToSkip AND NOT toInteger(trim(nodeRecord.`Client_number`)) IS NULL
MERGE (n: `Client` { `Client_number`: toInteger(trim(nodeRecord.`Client_number`)) })
SET n.`total_nb_recharge` = toFloat(trim(nodeRecord.`total_nb_recharge`))
SET n.`total_rechage` = toFloat(trim(nodeRecord.`total_rechage`))
SET n.`total_u_data` = toFloat(trim(nodeRecord.`total_u_data`))
SET n.`total_u_out` = toFloat(trim(nodeRecord.`total_u_out`))
SET n.`total_u_in` = toFloat(trim(nodeRecord.`total_u_in`))
SET n.`nb_cont_out` = toFloat(trim(nodeRecord.`nb_cont_out`))
SET n.`nb_cont_in` = toFloat(trim(nodeRecord.`nb_cont_in`))
SET n.`nb_cell_visite_out` = toFloat(trim(nodeRecord.`nb_cell_visite_out`))
SET n.`nb_cell_visite_in` = toFloat(trim(nodeRecord.`nb_cell_visite_in`))
SET n.`nbr_contrat` = toFloat(trim(nodeRecord.`nbr_contrat`))
SET n.`nbr_actif` = toFloat(trim(nodeRecord.`nbr_actif`))
SET n.`flag_churn` = toFloat(trim(nodeRecord.`flag_churn`))
SET n.`Cluster` = toInteger(trim(nodeRecord.`Cluster`))
SET n.`entity_code` = nodeRecord.`entity_code`
SET n.`entity_type_name` = nodeRecord.`entity_type_name`;

// Cluster 3: 
// Load statement
UNWIND $relRecords AS relRecord
MATCH (source: `Cluster 3` { `Cluster`: toInteger(trim(relRecord.`Cluster`)) })
MATCH (target: `Client` { `Client_number`: toInteger(trim(relRecord.`Client_number`)) })
MERGE (source)-[r: `Contient`]->(target);

// Key statement
CREATE CONSTRAINT `Cluster_Cluster_3_uniq` IF NOT EXISTS
FOR (n: `Cluster 3`)
REQUIRE (n.`Cluster`) IS UNIQUE;

// Load statement
UNWIND $nodeRecords AS nodeRecord
WITH *
WHERE NOT nodeRecord.`Cluster` IN $idsToSkip AND NOT toInteger(trim(nodeRecord.`Cluster`)) IS NULL
AND nodeRecord.`Cluster` = $filterExactMatch
MERGE (n: `Cluster 3` { `Cluster`: toInteger(trim(nodeRecord.`Cluster`)) });

// Key statement
CREATE CONSTRAINT `Client_number_Client_uniq` IF NOT EXISTS
FOR (n: `Client`)
REQUIRE (n.`Client_number`) IS UNIQUE;

// Load statement
UNWIND $nodeRecords AS nodeRecord
WITH *
WHERE NOT nodeRecord.`Client_number` IN $idsToSkip AND NOT toInteger(trim(nodeRecord.`Client_number`)) IS NULL
MERGE (n: `Client` { `Client_number`: toInteger(trim(nodeRecord.`Client_number`)) })
SET n.`total_nb_recharge` = toFloat(trim(nodeRecord.`total_nb_recharge`))
SET n.`total_rechage` = toFloat(trim(nodeRecord.`total_rechage`))
SET n.`total_u_data` = toFloat(trim(nodeRecord.`total_u_data`))
SET n.`total_u_out` = toFloat(trim(nodeRecord.`total_u_out`))
SET n.`total_u_in` = toFloat(trim(nodeRecord.`total_u_in`))
SET n.`nb_cont_out` = toFloat(trim(nodeRecord.`nb_cont_out`))
SET n.`nb_cont_in` = toFloat(trim(nodeRecord.`nb_cont_in`))
SET n.`nb_cell_visite_out` = toFloat(trim(nodeRecord.`nb_cell_visite_out`))
SET n.`nb_cell_visite_in` = toFloat(trim(nodeRecord.`nb_cell_visite_in`))
SET n.`nbr_contrat` = toFloat(trim(nodeRecord.`nbr_contrat`))
SET n.`nbr_actif` = toFloat(trim(nodeRecord.`nbr_actif`))
SET n.`flag_churn` = toFloat(trim(nodeRecord.`flag_churn`))
SET n.`Cluster` = toInteger(trim(nodeRecord.`Cluster`))
SET n.`entity_code` = nodeRecord.`entity_code`
SET n.`entity_type_name` = nodeRecord.`entity_type_name`;