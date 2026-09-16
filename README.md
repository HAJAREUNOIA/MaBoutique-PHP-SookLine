\# SookLine — E-Commerce Website



SookLine is an e-commerce website developed as a PHP/MySQL project.  

The application allows users to browse products, create an account, manage a shopping cart, and place orders.



\## Project Overview



This project was developed using PHP, MySQL, HTML and CSS, with XAMPP used as the local development environment.



The application includes both customer and administration functionalities.



\## Features



\### Customer Features



\- User registration

\- User login and logout

\- Customer profile management

\- Browse available products

\- Search for products

\- Add products to the shopping cart

\- Remove products from the cart

\- Modify product quantities

\- View the cart and total price

\- Select a payment method

\- Validate an order

\- View order information



\### Administration Features



\- Administrator login

\- Dashboard

\- Add products

\- Edit products

\- Delete products

\- View clients

\- Edit client information

\- Manage orders



\## Technologies Used



\- PHP

\- MySQL

\- HTML5

\- CSS3

\- MySQLi

\- XAMPP

\- phpMyAdmin



\## Database



The project uses a MySQL database named `maboutique`.



The database contains tables for:



\- Clients

\- Administrators

\- Products

\- Shopping carts

\- Orders

\- Order items



The SQL database structure and sample data are included in `maboutique.sql`.



\## Project Structure



MaBoutique-PHP-SookLine/

│

├── img/

│   └── Product images

│

├── login.php

├── register.php

├── logout.php

├── profil\_client.php

│

├── produits.php

├── recherche.php

├── add\_to\_cart.php

├── modifier\_quantite.php

├── supprimer\_panier.php

├── PANIER.php

│

├── valider\_commande.php

├── commandes.php

├── adresse.php

│

├── adminlogin.php

├── dashboard.php

├── add\_product.php

├── edit\_product.php

├── delete\_product.php

├── view\_clients.php

├── edit\_client.php

│

├── db.php

├── securite.php

├── sidebar.php

├── menu\_gauche.php

├── footer.php

│

├── style.css

├── styles.css

├── logo.png

│

└── maboutique.sql



\## Main Workflow



The main customer workflow is:



Registration / Login

&#x20;       ↓

Browse Products

&#x20;       ↓

Search Products

&#x20;       ↓

Add Products to Cart

&#x20;       ↓

Modify / Remove Items

&#x20;       ↓

Validate Order

&#x20;       ↓

Select Payment Method

&#x20;       ↓

Order Saved in Database



\## Database Relationships



The application uses MySQL relationships between customers, products, carts and orders.



For example:



Clients

&#x20;  │

&#x20;  ├── Panier

&#x20;  │      └── Produits

&#x20;  │

&#x20;  └── Commandes

&#x20;         └── LignesDeCommandes

&#x20;                └── Produits



\## Project Purpose



The objective of this project was to develop a functional e-commerce website while practicing:



\- Server-side PHP development

\- MySQL database management

\- CRUD operations

\- User authentication

\- Session management

\- Shopping cart management

\- Order processing

\- Database relationships

\- HTML/CSS web development



\## Author



Hajar El Barhdadi

