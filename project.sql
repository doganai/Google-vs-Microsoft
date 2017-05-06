#3 MONTHS OF STOCK DATA FROM APPLE AND MICROSOFT
#SOME FEATURES IN THE DATA

#Shows where Apple Stock close is less than 140 and returns date and closes
SELECT apple_stock.date,apple_stock.close
FROM apple_stock
WHERE(apple_stock.close < 140); 

#Shows where Apple Stock volume is less than Microsoft Volume
SELECT apple_stock.date,apple_stock.volume,microsoft_stock.volume
FROM apple_stock,microsoft_stock
WHERE(apple_stock.volume < microsoft_stock.volume AND apple_stock.date = microsoft_stock.date);

#FIND MAX OF OPEN and DATE FROM APPLE STOCK
SELECT apple_stock.date, apple_stock.open
FROM apple_stock
WHERE((SELECT MAX(apple_stock.open) FROM apple_stock)) = (apple_stock.open);

#FIND MIN OF OPEN and DATE FROM APPLE STOCK
SELECT apple_stock.date, apple_stock.open
FROM apple_stock
WHERE((SELECT MIN(apple_stock.open) FROM apple_stock)) = (apple_stock.open);

#FIND MAX OF CLOSE and DATE FROM APPLE STOCK
SELECT apple_stock.date, apple_stock.close
FROM apple_stock
WHERE((SELECT MAX(apple_stock.close) FROM apple_stock)) = (apple_stock.close);

#FIND MIN OF CLOSE and DATE FROM APPLE STOCK
SELECT apple_stock.date, apple_stock.close
FROM apple_stock
WHERE((SELECT MIN(apple_stock.close) FROM apple_stock)) = (apple_stock.close);

#FIND avg OF CLOSE APPLE
SELECT AVG(apple_stock.close)
FROM apple_stock;

#FIND avg OF OPEN APPLE
SELECT AVG(apple_stock.open)
FROM apple_stock;

#FIND differece of avg OF CLOSE between apple and microsoft
SELECT AVG(apple_stock.close)-AVG(microsoft_stock.close)
FROM apple_stock, microsoft_stock;

#Find difference of avg OF OPEN between apple and microsoft
SELECT AVG(apple_stock.open)-AVG(microsoft_stock.open)
FROM apple_stock, microsoft_stock;

#FIND differece of avg OF CLOSE between apple and microsoft
SELECT AVG(apple_stock.close)-AVG(microsoft_stock.close)
FROM apple_stock, microsoft_stock;

#Find difference of OPEN between apple and microsoft
SELECT apple_stock.date, apple_stock.open - microsoft_stock.open
FROM apple_stock, microsoft_stock
WHERE(apple_stock.date = microsoft_stock.date);

#Find difference of CLOSE between apple and microsoft
SELECT apple_stock.date, apple_stock.close- microsoft_stock.close
FROM apple_stock, microsoft_stock
WHERE(apple_stock.date = microsoft_stock.date);

#Find difference of MAX between apple and microsoft
SELECT MAX(apple_stock.close)- MAX(microsoft_stock.close)
FROM apple_stock, microsoft_stock;

#Find difference of MIN between apple and microsoft
SELECT MIN(apple_stock.close)- MIN(microsoft_stock.close)
FROM apple_stock, microsoft_stock;
