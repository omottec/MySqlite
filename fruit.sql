PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE fruitsforsale (fruit text, state text, price real);
QUERY PLAN
`--SCAN TABLE fruitsforsale
INSERT INTO fruitsforsale VALUES('Orange','FL',0.84999999999999997779);
INSERT INTO fruitsforsale VALUES('Apple','NC',0.4500000000000000111);
INSERT INTO fruitsforsale VALUES('Peach','SC',0.59999999999999997779);
INSERT INTO fruitsforsale VALUES('Grape','CA',0.8000000000000000444);
INSERT INTO fruitsforsale VALUES('Lemon','FL',1.25);
INSERT INTO fruitsforsale VALUES('Strawberry','NC',2.4500000000000001776);
INSERT INTO fruitsforsale VALUES('Orange','CA',1.0500000000000000444);
CREATE INDEX fruitsforsale_idx_fruit_state on fruitsforsale(fruit,state);
CREATE INDEX fruitsforsale_idx_fruit_state_price on fruitsforsale(fruit,state,price);
CREATE INDEX fruitsforsale_idx_fruit on fruitsforsale(fruit);
CREATE INDEX fruitsforsale_idx_state on fruitsforsale(state);
COMMIT;
