SELECT DISTINCT
	product_new_title.title AS `Group Title`, 
	COUNT(product_new_title.title) AS `Product Count`, 
	product_new_title.created_at AS `Updated At`
FROM
	product_duplicate_lists
	INNER JOIN
	product_new_title
	ON 
		product_duplicate_lists.product_id = product_new_title.id
GROUP BY product_new_title.title
ORDER BY `Product Count` DESC