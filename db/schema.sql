create table cats (
id int unsigned not null auto_increment,
name VARCHAR (255) NOT NULL,
created_at DATETIME NOT NULL DEFAULT NOW(),

PRIMARY KEY (id)
);

CREATE table products (
id int UNSIGNED not null auto_increment,
name VARCHAR (255) NOT NULL,
`desc` text NOT NULL,
price DECIMAL(8,  2) NOT NULL,
pieces_no SMALLINT NOT NULL,
img VARCHAR(255) NOT NULL,
cat_id INT UNSIGNED,
created_at DATETIME NOT NULL DEFAULT NOW(),

PRIMARY KEY (id),
FOREIGN KEY(cat_id) REFERENCES cats(id) ON DELETE SET NULL
);

CREATE table orders (
id int UNSIGNED not null auto_increment,
name VARCHAR (255) NOT NULL,
email VARCHAR (255),
phone VARCHAR (255) NOT NULL,
`address` VARCHAR (255),
`status` ENUM('pending', 'approved', 'canceled') NOT NULL DEFAULT 'pending',
created_at DATETIME NOT NULL DEFAULT NOW(),

PRIMARY KEY (id)
); 

CREATE table order_details (
id int UNSIGNED not null auto_increment,
order_id int UNSIGNED,
product_id int UNSIGNED,
qyy INT NOT NULL,

PRIMARY KEY (id),
FOREIGN KEY(order_id) REFERENCES orders(id) ON DELETE SET NULL,
FOREIGN KEY(product_id) REFERENCES products(id) ON DELETE SET NULL

); 

CREATE table admins (
id int UNSIGNED not null auto_increment,
name VARCHAR (255) NOT NULL,
email VARCHAR (255),
`password` VARCHAR (255) NOT NULL,
is_super enum('yes', 'no') NOT NULL DEFAULT 'no',
created_at DATETIME NOT NULL DEFAULT NOW(),

PRIMARY KEY (id)

);