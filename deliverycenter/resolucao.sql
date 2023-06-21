USE DB_DELIVERYCENTER;

-- 1- Qual o número de hubs por cidade? -- OK
SELECT hub_city AS Cidade, COUNT(*) AS `Nº de Hubs` FROM hubs GROUP BY hub_city ORDER BY `Nº de Hubs`, Cidade;


-- 2- Qual o número de pedidos (orders) por status? -- OK
SELECT COUNT(*) AS `Nº de Pedidos`, order_status AS Status FROM orders GROUP BY order_status;


-- 3- Qual o número de lojas (stores) por cidade dos hubs? -- OK
SELECT COUNT(*) AS `Nº de Lojas`, h.hub_city AS Cidade FROM stores s 
INNER JOIN hubs h ON h.hub_id = s.hub_id GROUP BY h.hub_city;


-- 4- Qual o maior e o menor valor de pagamento (payment_amount) registrado? -- OK
SELECT MAX(payment_amount) AS `Maior Valor`, MIN(payment_amount)  AS `Menor Valor` FROM payments;


-- 5- Qual tipo de driver (driver_type) fez o maior número de entregas? -- OK
SELECT dr.driver_type AS `Tipo do Driver`, COUNT(*) AS `Nº de Entregas` 
FROM deliveries dl
INNER JOIN drivers dr on dl.driver_id = dr.driver_id where dl.delivery_status = 'Delivered'
GROUP BY driver_type ORDER BY `Nº de Entregas` DESC LIMIT 1;

/*
SELECT dr.driver_type AS `Tipo do Driver`, dl.delivery_status AS `Status Entrega`, COUNT(*) AS `Nº de Entregas` 
FROM deliveries dl
INNER JOIN drivers dr on dl.driver_id = dr.driver_id and dl.delivery_status = 'Delivered'
GROUP BY driver_type ORDER BY `Nº de Entregas` DESC LIMIT 1; 
*/

SELECT dr.driver_type AS `Tipo do Driver`, dl.delivery_status AS `Status Entrega`, COUNT(*) AS `Nº de Entregas` 
FROM deliveries dl
INNER JOIN drivers dr on dl.driver_id = dr.driver_id where dl.delivery_status = 'Delivered'
GROUP BY driver_type ORDER BY `Nº de Entregas` DESC LIMIT 1;


 -- 6- Qual a distância média das entregas por tipo de driver (driver_modal)? NAOOOOO
SELECT dr.driver_modal AS `Tipo de Driver`, ROUND(AVG(dl.delivery_distance_meters), 2) AS `Distância Média` FROM deliveries dl 
INNER JOIN drivers dr ON dl.driver_id = dr.driver_id 
WHERE dl.delivery_status = 'Delivered'
GROUP BY dr.driver_modal;


-- 7- Qual a média de valor de pedido (order_amount) por loja, em ordem decrescente? -- OK
SELECT o.store_id, s.store_name AS Loja, ROUND(AVG(order_amount), 2) AS Media FROM orders o
INNER JOIN stores s ON s.store_id = o.store_id
GROUP BY store_id ORDER BY Media DESC;


-- 8- Existem pedidos que não estão associados a lojas? Se caso positivo, quantos? -- OK
/* 
Acredito que não existem pedidos que não estão associados a lojas
a contagem de store_id nulos é zero
e a contagem de store_id válidos é a mesma da quantidade total de registros da tabela orders 368999
*/
 SELECT COUNT(*) FROM orders WHERE store_id IS NULL;
SELECT * FROM orders WHERE store_id IS NULL;

SELECT COUNT(O.STORE_ID) FROM ORDERS O -- 368999
WHERE EXISTS
(SELECT S.STORE_ID FROM STORES S WHERE S.STORE_ID = O.STORE_ID);

SELECT COUNT(*) FROM ORDERS; -- 368999


-- 9- Qual o valor total de pedido (order_amount) no channel 'FOOD PLACE'? -- OK
SELECT ROUND(SUM(o.order_amount), 2) AS `Total Pedido` FROM orders o 
INNER JOIN channels c ON c.channel_id = o.channel_id
WHERE c.channel_name = 'FOOD PLACE';


-- 10- Quantos pagamentos foram cancelados (chargeback)? -- OK
SELECT COUNT(*) AS `Qtde Pagamentos Cancelados`FROM payments WHERE payment_status = 'CHARGEBACK';


-- 11- Qual foi o valor médio dos pagamentos cancelados (chargeback)? -- OK
SELECT ROUND(AVG(payment_amount), 2) AS `Média Pagamentos Cancelados` FROM payments WHERE payment_status = 'chargeback';
-- SELECT ROUND(AVG(payment_amount + payment_fee), 2) AS `Média Pagamentos Cancelados` FROM payments WHERE payment_status = 'chargeback';


-- 12- Qual a média do valor de pagamento por método de pagamento (payment_method) em ordem decrescente? -- OK
SELECT payment_method, ROUND(AVG(payment_amount), 2) AS Media FROM payments 
GROUP BY payment_method ORDER BY Media DESC;

-- SELECT payment_method, ROUND(AVG(payment_amount + payment_fee), 2) AS Media FROM payments GROUP BY payment_method ORDER BY Media DESC;

SELECT payment_method AS `Método de Pagamento`, 
COUNT(*) AS `Qtde Pagamentos`, 
ROUND(SUM(payment_amount), 2) AS `Valor Total Pagamentos`, 
ROUND(AVG(payment_amount), 2) AS `Média dos Pagamentos` FROM payments 
GROUP BY payment_method ORDER BY `Média dos Pagamentos` DESC;


-- 13- Quais métodos de pagamento tiveram valor médio superior a 100? -- OK
SELECT payment_method  AS `Método de Pagamento`, ROUND(AVG(payment_amount), 2) AS Media
FROM payments GROUP BY payment_method HAVING Media > 100;

-- SELECT payment_method  AS `Método de Pagamento`, ROUND(AVG(payment_amount + payment_fee), 2) AS Media FROM payments GROUP BY payment_method HAVING Media > 100;


-- 14- Qual a média de valor de pedido (order_amount) por estado do hub (hub_state), segmento da loja (store_segment) e tipo de canal (channel_type)? -- OK
SELECT h.hub_state AS `Estado do Hub`, s.store_segment AS `Segmento de Loja`, 
c.channel_type AS `Tipo de Canal`, ROUND(AVG(order_amount), 2) AS Media
FROM orders o
INNER JOIN channels c ON o.channel_id = c.channel_id
INNER JOIN stores s ON o.store_id = s.store_id
INNER JOIN hubs h ON s.hub_id = h.hub_id
GROUP BY h.hub_state, s.store_segment, c.channel_type;


-- 15- Qual estado do hub (hub_state), segmento da loja (store_segment) e tipo de canal (channel_type) teve média de valor de pedido (order_amount) maior que 450? -- OK
-- Nenhum teve:
SELECT h.hub_state AS `Estado do Hub`, s.store_segment AS `Segmento de Loja`, 
c.channel_type AS `Tipo de Canal`, ROUND(AVG(order_amount), 2) AS Media
FROM orders o
INNER JOIN channels c ON o.channel_id = c.channel_id
INNER JOIN stores s ON o.store_id = s.store_id
INNER JOIN hubs h ON s.hub_id = h.hub_id
GROUP BY h.hub_state, s.store_segment, c.channel_type
HAVING Media > 450;
