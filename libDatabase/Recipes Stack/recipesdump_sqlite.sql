CREATE TABLE category (
  ID int(11) NOT NULL default '0',
  Name varchar(255) default NULL,
  PRIMARY KEY  (ID)
);

INSERT INTO category (ID,Name) VALUES ('1','Breads');
INSERT INTO category (ID,Name) VALUES ('2','Breakfast');
INSERT INTO category (ID,Name) VALUES ('3','Desserts');
INSERT INTO category (ID,Name) VALUES ('4','Salads');

CREATE TABLE category_recipe (
  CategoryID int(11) default NULL,
  RecipeID int(11) default NULL
);

INSERT INTO category_recipe (CategoryID,RecipeID) VALUES ('1','1');
INSERT INTO category_recipe (CategoryID,RecipeID) VALUES ('2','2');
INSERT INTO category_recipe (CategoryID,RecipeID) VALUES ('3','3');

CREATE TABLE recipe (
  ID int(11) NOT NULL default '0',
  Name varchar(255) default NULL,
  Directions text,
  PRIMARY KEY  (ID)
);

INSERT INTO recipe (ID,Name,Directions) VALUES ('1','Banana Bread','How to make banana bread.');
INSERT INTO recipe (ID,Name,Directions) VALUES ('2','Pancakes','How to make pancakes.');
INSERT INTO recipe (ID,Name,Directions) VALUES ('3','Chocolate Cake','How to make chocolate cake.');

CREATE TABLE tableid (
  next_id int(11) default NULL,
  table_name varchar(40) default NULL
);

INSERT INTO tableid (next_id,table_name) VALUES ('5','category');
INSERT INTO tableid (next_id,table_name) VALUES ('4','recipe');


