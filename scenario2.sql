////////////////SCENARIO 2

drop procedure doWhile;
delimiter //
CREATE PROCEDURE doWhile()   
BEGIN
DECLARE i INT DEFAULT 5; 
DECLARE x INT DEFAULT 1;
DECLARE y INT DEFAULT 0;
    INSERT INTO `prime_number` (numbers, name_numbers) values (2, 2);
    INSERT INTO `prime_number` (numbers, name_numbers) values (3, 3);
WHILE (i <= 1000000) DO
SET x = 1;
SET y = 0;
WHILE (x <= i) DO
IF (i%x = 0) THEN
SET y = y+1;
END IF;
SET x = x+1;
END WHILE;
IF (y = 2) THEN
INSERT INTO `prime_number` (numbers, name_numbers) values (i, i);
END IF;
SET i = i+1;
END WHILE;
END;
delimiter ;

#panggil dengan, call doWhile();


drop procedure if exists doEvenOdd;
delimiter //
CREATE PROCEDURE doEvenOdd()   
BEGIN
DECLARE e INT default 1;
DECLARE even INT default 0;
WHILE (e<=1000000) DO
SET even = e+1;
INSERT INTO `even_odd_number` (number_evens,number_odds, total,name_total) values (even, e,even+e,even+e);
SET e = e + 2;
END WHILE;
END;
delimiter ;

#panggil dengan, call doEvenOdd();


drop procedure if exists nominals;
delimiter //
CREATE PROCEDURE nominals()   
BEGIN
DECLARE fvalue double default 2000000;
DECLARE pvalue int default 0;
DECLARE total double default 0;
WHILE (total<=15000000) DO
SET pvalue = fvalue * 0.03;
SET total = pvalue + fvalue;
INSERT INTO `nominal_amount` (nominal,additonal_number, total) values (fvalue,pvalue, total);
set fvalue = total;
END WHILE;
END;
delimiter ;

#panggil dengan, call nominals();
