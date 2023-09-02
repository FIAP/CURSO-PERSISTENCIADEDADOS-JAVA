--Selecionando todos os clientes e seus pedidos:
SELECT "Customer"."Name", "Order"."OrderID"
FROM "Customer"
LEFT JOIN "Order" ON "Customer"."CustomerID" = "Order"."CustomerID";

--Calculando o total gasto por cliente:
SELECT "Customer"."Name", SUM("Order"."TotalAmount") AS "TotalSpent"
FROM "Customer"
LEFT JOIN "Order" ON "Customer"."CustomerID" = "Order"."CustomerID"
GROUP BY "Customer"."Name";

--Calculando o valor total de vendas por status de pedido:
SELECT "OrderStatus"."Name", SUM("Order"."TotalAmount") AS "TotalSales"
FROM "Order"
INNER JOIN "OrderStatus" ON "Order"."OrderStatusID" = "OrderStatus"."OrderStatusID"
GROUP BY "OrderStatus"."Name";

--Listando todos os pedidos com detalhes de produtos:
SELECT "Order"."OrderID", "Product"."Name", "OrderLine"."Quantity"
FROM "Order"
INNER JOIN "OrderLine" ON "Order"."OrderID" = "OrderLine"."OrderID"
INNER JOIN "Product" ON "OrderLine"."ProductID" = "Product"."ProductID";

--Encontrando pedidos feitos por um cliente específico:
SELECT "Order"."OrderID", "Order"."TotalAmount"
FROM "Order"
INNER JOIN "Customer" ON "Order"."CustomerID" = "Customer"."CustomerID"
WHERE "Customer"."Name" = 'Customer 1';

--Contando o número de pedidos por cliente:
SELECT "Customer"."Name", COUNT("Order"."OrderID") AS "OrderCount"
FROM "Customer"
LEFT JOIN "Order" ON "Customer"."CustomerID" = "Order"."CustomerID"
GROUP BY "Customer"."Name";