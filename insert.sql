--=================================================INSERT
INSERT INTO USERS(ID_USER,EMAIL,PASS) VALUES (S_ID_USER.nextval, 'tomasz.kot@wp.pl', 'password123');
INSERT INTO USERS(ID_USER,EMAIL,PASS) VALUES (S_ID_USER.nextval, 'jankowalski120@gmail.com', 'beata321');
INSERT INTO USERS(ID_USER,EMAIL,PASS) VALUES (S_ID_USER.nextval, 'magdazak@o2.pl', 'madzia991');
INSERT INTO USERS(ID_USER,EMAIL,PASS) VALUES (S_ID_USER.nextval, 'wojtekmatuszewski@gmai.com', 'wojtek96');
INSERT INTO USERS(ID_USER,EMAIL,PASS) VALUES (S_ID_USER.nextval, 'nowakjan@onet.pl', 'jan12nowak');

insert into users_firm(ID_USER_FIRM, FNAME, LNAME, FIRM_NAME, NIP, CITY, ADDRESS, postal_code, ID_USER) VALUES (s_id_user_firm.nextval, 'Tomasz', 'Kot', 'Przedsiebiorstwo Kot Tomasz', '9121129889', 'Warszawa', 'Wiejska 100', '01-485', 1);
insert into users_firm(ID_USER_FIRM, FNAME, LNAME, FIRM_NAME, NIP, CITY, ADDRESS, postal_code, ID_USER) VALUES (s_id_user_firm.nextval, 'Jan', 'Kowalski', 'FUH Jan Kowalski', '8665596232', 'Radom', 'Lubelska 61', '26-600', 2);
insert into users_firm(ID_USER_FIRM, FNAME, LNAME, FIRM_NAME, NIP, CITY, ADDRESS, postal_code, ID_USER) VALUES (s_id_user_firm.nextval, 'Magdalena', 'Żak', 'ŻAK Company Limited', '9483216589', 'Kowala', 'Kowala 47', '26-624', 3); 
insert into users_firm(ID_USER_FIRM, FNAME, LNAME, FIRM_NAME, NIP, CITY, ADDRESS, postal_code, ID_USER) VALUES (s_id_user_firm.nextval, 'Wojtek', 'Mateuszewski', 'PPUH Matuszewski Wojciech', '9874563214', 'Łódź', 'Słoneczna 45/12', '33-645', 4);
insert into users_firm(ID_USER_FIRM, FNAME, LNAME, FIRM_NAME, NIP, CITY, ADDRESS, postal_code, ID_USER) VALUES (s_id_user_firm.nextval, 'Jan', 'Nowak', 'Firma Jan Nowak', '6445236487', 'Warszawa', 'Wrocławska 8/12', '01-495', 5);

insert into client(id_client, fname, lname, pesel, date_add, id_user) values(s_id_client.nextval,'Tomasz', 'Lis', '95012309090', sysdate, 1);
insert into client(id_client, fname, lname, pesel, date_add, id_user) values(s_id_client.nextval,'Marcin', 'Kowalski', '92081467517', sysdate, 1);
insert into client(id_client, fname, lname, pesel, date_add, id_user) values(s_id_client.nextval,'Anna', 'Nowak', '73062412605', sysdate, 1);
insert into client(id_client, fname, lname, pesel, date_add, id_user) values(s_id_client.nextval,'Ewelina', 'Lewandowska', '95012309090', sysdate, 1);
insert into client(id_client, fname, lname, pesel, date_add, id_user) values(s_id_client.nextval,'Kuba', 'Wrzosek', '92081467517', sysdate, 1);
insert into client(id_client, fname, lname, pesel, date_add, id_user) values(s_id_client.nextval,'Lidia', 'Kotowska', '73062412605', sysdate, 1);
insert into client(id_client, fname, lname, pesel, date_add, id_user) values(s_id_client.nextval,'Robert', 'Maklowicz', '95012309090', sysdate, 1);
insert into client(id_client, fname, lname, pesel, date_add, id_user) values(s_id_client.nextval,'Michal', 'Makowski', '92081467517', sysdate, 1);
insert into client(id_client, fname, lname, pesel, date_add, id_user) values(s_id_client.nextval,'Wiktor', 'Zachar', '73062412605', sysdate, 1);

insert into contact(id_contact,email,tel_1,tel_2,id_client) VALUES(s_id_contact.nextval, 'tomaszlis@o2.pl',666777888,999111222, 1);
insert into contact(id_contact,email,tel_1,tel_2,id_client) VALUES(s_id_contact.nextval, 'mkowalski@wp.pl',222333444,555666777, 2);
insert into contact(id_contact,email,tel_1,tel_2,id_client) VALUES(s_id_contact.nextval, 'lewandowska.ewelina@o2.pl',333444555,666777888, 4);
insert into contact(id_contact,email,tel_1,tel_2,id_client) VALUES(s_id_contact.nextval, 'jakubow@o2.pl',666777888,999111222, 5);
insert into contact(id_contact,email,tel_1,tel_2,id_client) VALUES(s_id_contact.nextval, 'rmaklowicz@o2.pl',222333444,555666777, 7);
insert into contact(id_contact,email,tel_1,tel_2,id_client) VALUES(s_id_contact.nextval, 'mmakowski@o2.pl',333444555,666777888, 8);
insert into contact(id_contact,email,tel_1,tel_2,id_client) VALUES(s_id_contact.nextval, 'wiktorz@o2.pl',666777888,999111222, 9);

insert into address(id_address,city,street,postal_code,hnumber,id_client) values(s_id_address.nextval,'Warszawa','Seceminska','01-485', '2B',1);
insert into address(id_address,city,street,postal_code,hnumber,id_client) values(s_id_address.nextval,'Radom','Żeromskiego','26-600', '112B',2);
insert into address(id_address,city,street,postal_code,hnumber,id_client) values(s_id_address.nextval,'Kowala','Kowala','26-624', '12/3',3);
insert into address(id_address,city,street,postal_code,hnumber,id_client) values(s_id_address.nextval,'Łódź','Pogonowskiego','15-124', '2A/33',4);
insert into address(id_address,city,street,postal_code,hnumber,id_client) values(s_id_address.nextval,'Gdańsk','PCK','15-124', '5/21',5);
insert into address(id_address,city,street,postal_code,hnumber,id_client) values(s_id_address.nextval,'Warszawa','Górczewska','04-911', '77A',6);
insert into address(id_address,city,street,postal_code,hnumber,id_client) values(s_id_address.nextval,'Warszawa','Chłodna','01-412', '51',7);
insert into address(id_address,city,street,postal_code,hnumber,id_client) values(s_id_address.nextval,'Radom','Polna','26-600', '2C',8); 

insert into product_type(ID_PRODUCT_TYPE, PRODUCT_TYPE, DESCRIPTION, ID_USER) VALUES (s_id_product_type.nextval, 'Artykuły spożywcze', 'Artykuły spożywcze', 1);
insert into product_type(ID_PRODUCT_TYPE, PRODUCT_TYPE, DESCRIPTION, ID_USER) VALUES (s_id_product_type.nextval, 'Pieczywo', 'Pieczywo', 1);
insert into product_type(ID_PRODUCT_TYPE, PRODUCT_TYPE, DESCRIPTION, ID_USER) VALUES (s_id_product_type.nextval, 'Materiały budowlane', 'Materiały budowlane', 1);
insert into product_type(ID_PRODUCT_TYPE, PRODUCT_TYPE, DESCRIPTION, ID_USER) VALUES (s_id_product_type.nextval, 'Materiały biurowe', 'Materiały biurowe', 1);
insert into product_type(ID_PRODUCT_TYPE, PRODUCT_TYPE, DESCRIPTION, ID_USER) VALUES (s_id_product_type.nextval, 'Chemia', 'Materiały chemiczne', 1);
insert into product_type(ID_PRODUCT_TYPE, PRODUCT_TYPE, DESCRIPTION, ID_USER) VALUES (s_id_product_type.nextval, 'Elektronika', 'Elektronika i sprzęt komputerowy', 1);
insert into product_type(ID_PRODUCT_TYPE, PRODUCT_TYPE, DESCRIPTION, ID_USER) VALUES (s_id_product_type.nextval, 'Gry planszowe', 'Gry planszowe', 1);
insert into product_type(ID_PRODUCT_TYPE, PRODUCT_TYPE, DESCRIPTION, ID_USER) VALUES (s_id_product_type.nextval, 'Książki', 'Książki', 1);

insert into product(ID_PRODUCT, PRODUCT_NAME, DESCRIPTION, ID_PRODUCT_TYPE, ID_USER) VALUES (s_id_product.nextval, 'Jabłka', 'Warzywa',1 ,1);
insert into product(ID_PRODUCT, PRODUCT_NAME, ID_PRODUCT_TYPE, ID_USER) VALUES (s_id_product.nextval, 'Chleb',2,1);
insert into product(ID_PRODUCT, PRODUCT_NAME, ID_PRODUCT_TYPE, ID_USER) VALUES (s_id_product.nextval, 'Płyta OSB',3,1);
insert into product(ID_PRODUCT, PRODUCT_NAME, ID_PRODUCT_TYPE, ID_USER) VALUES (s_id_product.nextval, 'Długopis', 4, 1);
insert into product(ID_PRODUCT, PRODUCT_NAME, ID_PRODUCT_TYPE, ID_USER) VALUES (s_id_product.nextval, 'Płyn do naczyń', 5, 1);
insert into product(ID_PRODUCT, PRODUCT_NAME, ID_PRODUCT_TYPE, ID_USER) VALUES (s_id_product.nextval, 'Karta gaficzna', 6, 1);
insert into product(ID_PRODUCT, PRODUCT_NAME, ID_PRODUCT_TYPE, ID_USER) VALUES (s_id_product.nextval, 'Warcaby', 7, 1);
insert into product(ID_PRODUCT, PRODUCT_NAME, ID_PRODUCT_TYPE, ID_USER) VALUES (s_id_product.nextval, 'W pustyni i w puszczy', 8, 1);

insert into facture(ID_FACTURE, FACTURE_NAME, ID_CLIENT, DATE_ADD, ID_USER) VALUES (s_id_facture.nextval, 'FV/1/02/2020', 1, '07/02/2020', 1);
insert into facture(ID_FACTURE, FACTURE_NAME, ID_CLIENT, DATE_ADD, ID_USER) VALUES (s_id_facture.nextval, 'FV/2/02/2020', 2, '10/02/2020', 1);
insert into facture(ID_FACTURE, FACTURE_NAME, ID_CLIENT, DATE_ADD, ID_USER) VALUES (s_id_facture.nextval, 'FV/1/03/2020', 3, '10/03/2020', 1);
insert into facture(ID_FACTURE, FACTURE_NAME, ID_CLIENT, DATE_ADD, ID_USER) VALUES (s_id_facture.nextval, 'FV/10/02/2020', 4, '15/02/2020', 1);
insert into facture(ID_FACTURE, FACTURE_NAME, ID_CLIENT, DATE_ADD, ID_USER) VALUES (s_id_facture.nextval, 'FV/3/02/2020', 5, '20/02/2020', 1);
insert into facture(ID_FACTURE, FACTURE_NAME, ID_CLIENT, DATE_ADD, ID_USER) VALUES (s_id_facture.nextval, 'FV/6/02/2020', 6, '17/02/2020', 1);

insert into position(ID_POSITION, ID_FACTURE, ID_PRODUCT, AMOUNT, VALUE_COST, ID_VALUE_TYPE) VALUES (s_id_position.nextval, 2, 2, 50, 150, 1);
insert into position(ID_POSITION, ID_FACTURE, ID_PRODUCT, AMOUNT, VALUE_COST, ID_VALUE_TYPE) VALUES (s_id_position.nextval, 2, 3, '2m2', 80, 1);
insert into position(ID_POSITION, ID_FACTURE, ID_PRODUCT, AMOUNT, VALUE_COST, ID_VALUE_TYPE) VALUES (s_id_position.nextval, 2, 1, '20kg', 30, 1);
insert into position(ID_POSITION, ID_FACTURE, ID_PRODUCT, AMOUNT, VALUE_COST, ID_VALUE_TYPE) VALUES (s_id_position.nextval, 5, 8, 1, 40, 1);
insert into position(ID_POSITION, ID_FACTURE, ID_PRODUCT, AMOUNT, VALUE_COST, ID_VALUE_TYPE) VALUES (s_id_position.nextval, 3, 4, 10, 15, 1);
insert into position(ID_POSITION, ID_FACTURE, ID_PRODUCT, AMOUNT, VALUE_COST, ID_VALUE_TYPE) VALUES (s_id_position.nextval, 4, 5, 10, 45, 1);

INSERT INTO CONTRACT_TYPE(ID_CONTRACT_TYPE, CONTRACT_NAME) VALUES (s_id_contract_type.nextval, 'Umowa o prace na czas okreslony');
INSERT INTO CONTRACT_TYPE(ID_CONTRACT_TYPE, CONTRACT_NAME) VALUES (s_id_contract_type.nextval, 'Umowa o prace na czas nieokreslony');
INSERT INTO CONTRACT_TYPE(ID_CONTRACT_TYPE, CONTRACT_NAME) VALUES (s_id_contract_type.nextval, 'Umowa o dzielo');
INSERT INTO CONTRACT_TYPE(ID_CONTRACT_TYPE, CONTRACT_NAME) VALUES (s_id_contract_type.nextval, 'Umowa na okres probny');
INSERT INTO CONTRACT_TYPE(ID_CONTRACT_TYPE, CONTRACT_NAME) VALUES (s_id_contract_type.nextval, 'Umowa zlecenie');

INSERT INTO WORKER(ID_WORKER, FNAME, LNAME, PESEL, DATE_ADD, ID_USER) VALUES (s_id_worker.nextval, 'Mariusz', 'Lis', '90040258958', '20/01/2020', 1 );
INSERT INTO WORKER(ID_WORKER, FNAME, LNAME, PESEL, DATE_ADD, ID_USER) VALUES (s_id_worker.nextval, 'Tomasz', 'Machnio', '92040258958', '29/01/2020', 1 );
INSERT INTO WORKER(ID_WORKER, FNAME, LNAME, PESEL, DATE_ADD, ID_USER) VALUES (s_id_worker.nextval, 'Kamil', 'Strzecha', '88040258958', '29/01/2020', 1 );
INSERT INTO WORKER(ID_WORKER, FNAME, LNAME, PESEL, DATE_ADD, ID_USER) VALUES (s_id_worker.nextval, 'Filip', 'Bielecki', '76040258958', '25/01/2020', 1 );
INSERT INTO WORKER(ID_WORKER, FNAME, LNAME, PESEL, DATE_ADD, ID_USER) VALUES (s_id_worker.nextval, 'Milena', 'Markiewicz', '82040258958', '29/01/2020', 1 );
INSERT INTO WORKER(ID_WORKER, FNAME, LNAME, PESEL, DATE_ADD, ID_USER) VALUES (s_id_worker.nextval, 'Marlena', 'Piecyk', '91040258958', '30/01/2020', 1 );

INSERT INTO ORDER_STATUS(ID_ORDER_STATUS, ORDER_STATUS_NAME) VALUES (s_id_order_status.nextval, 'Rozpoczete');
INSERT INTO ORDER_STATUS(ID_ORDER_STATUS, ORDER_STATUS_NAME) VALUES (s_id_order_status.nextval, 'W trakcie');
INSERT INTO ORDER_STATUS(ID_ORDER_STATUS, ORDER_STATUS_NAME) VALUES (s_id_order_status.nextval, 'Anulowane');
INSERT INTO ORDER_STATUS(ID_ORDER_STATUS, ORDER_STATUS_NAME) VALUES (s_id_order_status.nextval, 'Zakonczone');

INSERT INTO CONTRACT (ID_CONTRACT, ID_WORKER, ID_CONTRACT_TYPE, START_DATE, SALARY) VALUES (s_id_contract.nextval, 1, 1, '01/01/2020', '3500' );
INSERT INTO CONTRACT (ID_CONTRACT, ID_WORKER, ID_CONTRACT_TYPE, START_DATE, SALARY) VALUES (s_id_contract.nextval, 2, 1, '01/02/2020', '3000' );
INSERT INTO CONTRACT (ID_CONTRACT, ID_WORKER, ID_CONTRACT_TYPE, START_DATE, SALARY) VALUES (s_id_contract.nextval, 4, 3, '15/01/2020','5000' );
INSERT INTO CONTRACT (ID_CONTRACT, ID_WORKER, ID_CONTRACT_TYPE, START_DATE, END_DATE, SALARY) VALUES (s_id_contract.nextval, 3, 1, '01/02/2020', '01/05/2020', '3000' );
INSERT INTO CONTRACT (ID_CONTRACT, ID_WORKER, ID_CONTRACT_TYPE, START_DATE, END_DATE, SALARY) VALUES (s_id_contract.nextval, 5, 4, '01/01/2020','01/02/2020','2500' );
INSERT INTO CONTRACT (ID_CONTRACT, ID_WORKER, ID_CONTRACT_TYPE, START_DATE, END_DATE, SALARY) VALUES (s_id_contract.nextval, 6, 5, '01/03/2020','01/05/2020','1500' );

insert into address_type (id_address_type, address_type) VALUES (s_id_address_type.nextval,'Zamieszkania' ); 
insert into address_type (id_address_type, address_type) VALUES (s_id_address_type.nextval, 'Korespodencyjny'); 
insert into address_type (id_address_type, address_type) VALUES (s_id_address_type.nextval, 'Zameldowania'); 
insert into address_type (id_address_type, address_type) VALUES (s_id_address_type.nextval, 'Inne'); 

insert into order_user (ID_ORDER, ORDER_NUMBER, ID_CLIENT, ID_PRODUCT, AMOUNT_PRODUCT, ID_AMOUNT_TYPE, ORDER_DATE, ID_ORDER_STATUS, ID_USER) VALUES (s_id_order_user.nextval, '01/02/20', 1, 2, '30', 1,'10/02/2020' , 1, 1);
insert into order_user (ID_ORDER, ORDER_NUMBER, ID_CLIENT, ID_PRODUCT, AMOUNT_PRODUCT, ID_AMOUNT_TYPE, ORDER_DATE, ID_ORDER_STATUS, ID_USER) VALUES (s_id_order_user.nextval, '02/02/20', 3, 1, '10', 2,'14/02/2020' , 1, 1);
insert into order_user (ID_ORDER, ORDER_NUMBER, ID_CLIENT, ID_PRODUCT, AMOUNT_PRODUCT, ID_AMOUNT_TYPE, ORDER_DATE, ID_ORDER_STATUS, ID_USER) VALUES (s_id_order_user.nextval, '03/02/20', 1, 2, '10', 1,'05/02/2020' , 1, 1);
insert into order_user (ID_ORDER, ORDER_NUMBER, ID_CLIENT, ID_PRODUCT, AMOUNT_PRODUCT, ID_AMOUNT_TYPE, ORDER_DATE, ID_ORDER_STATUS, ID_USER) VALUES (s_id_order_user.nextval, '04/02/20', 4, 3, '15', 3,'08/02/2020' , 1, 1);
insert into order_user (ID_ORDER, ORDER_NUMBER, ID_CLIENT, ID_PRODUCT, AMOUNT_PRODUCT, ID_AMOUNT_TYPE, ORDER_DATE, ID_ORDER_STATUS, ID_USER) VALUES (s_id_order_user.nextval, '05/02/20', 4, 4, '20', 1,'08/02/2020' , 1, 1);

insert into warehouse(id_warehouse, ID_PRODUCT, product_amount, ID_AMOUNT_TYPE, date_add) VALUES (s_id_warehouse.nextval, 1, 10, 2, '10/02/2020');
insert into warehouse(id_warehouse, ID_PRODUCT, product_amount, ID_AMOUNT_TYPE, date_add) VALUES (s_id_warehouse.nextval, 2, 10, 1, '10/02/2020');
insert into warehouse(id_warehouse, ID_PRODUCT, product_amount, ID_AMOUNT_TYPE, date_add) VALUES (s_id_warehouse.nextval, 3, 5, 3, '10/02/2020');
insert into warehouse(id_warehouse, ID_PRODUCT, product_amount, ID_AMOUNT_TYPE, date_add) VALUES (s_id_warehouse.nextval, 4, 5, 1, '10/02/2020');
insert into warehouse(id_warehouse, ID_PRODUCT, product_amount, ID_AMOUNT_TYPE, date_add) VALUES (s_id_warehouse.nextval, 5, 20, 1, '10/02/2020');
insert into warehouse(id_warehouse, ID_PRODUCT, product_amount, ID_AMOUNT_TYPE, date_add) VALUES (s_id_warehouse.nextval, 8, 1, 1, '10/02/2020');

INSERT INTO AMOUNT_TYPE(ID_AMOUNT_TYPE,AMOUNT_TYPE_NAME) VALUES(s_id_amount_type.nextval, 'SZTUK');
INSERT INTO AMOUNT_TYPE(ID_AMOUNT_TYPE,AMOUNT_TYPE_NAME) VALUES(s_id_amount_type.nextval, 'KILOGRAM');
INSERT INTO AMOUNT_TYPE(ID_AMOUNT_TYPE,AMOUNT_TYPE_NAME) VALUES(s_id_amount_type.nextval, 'm2');
INSERT INTO AMOUNT_TYPE(ID_AMOUNT_TYPE,AMOUNT_TYPE_NAME) VALUES(s_id_amount_type.nextval, 'metr');
INSERT INTO AMOUNT_TYPE(ID_AMOUNT_TYPE,AMOUNT_TYPE_NAME) VALUES(s_id_amount_type.nextval, 'metr bieżacy');

insert into VALUE_TYPE(ID_VALUE_TYPE, VALUE_TYPE_NAME) VALUES (S_ID_VALUE_TYPE.NEXTVAL, 'PLN');
insert into VALUE_TYPE(ID_VALUE_TYPE, VALUE_TYPE_NAME) VALUES (S_ID_VALUE_TYPE.NEXTVAL, 'EUR');
insert into VALUE_TYPE(ID_VALUE_TYPE, VALUE_TYPE_NAME) VALUES (S_ID_VALUE_TYPE.NEXTVAL, 'USD');