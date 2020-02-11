CREATE OR REPLACE VIEW v_client_details
AS
  SELECT k.FNAME,
         k.lname,
         c.EMAIL,
         c.TEL_1,
         c.tel_2,
         a.postal_code,
         a.CITY,
         a.STREET,
         a.HNUMBER,
         k.id_user
    FROM contact c
         JOIN client k
           ON c.id_client = k.id_client
           and c.status = 1
           and k.status = 1
         JOIN address a
           ON a.id_client = k.id_client 
           and a.status = 1
	WITH READ ONLY CONSTRAINT v_client_details;
	
	
CREATE OR REPLACE VIEW v_users_details
AS
  SELECT uf.fname,
         uf.lname,
         uf.firm_name,
         uf.postal_code,
         uf.city,
         uf.ADDRESS,
         u.email,
         u.id_user
    FROM users u
         JOIN users_firm uf
           ON u.id_user = uf.id_user 
           and u.status = 1
           and uf.status = 1
  with read only CONSTRAINT v_users_details; 


CREATE OR REPLACE VIEW V_POSITION_DETAILS
AS
  SELECT rownum AS position,
        f.facture_name,
        pr.product_name,
        p.amount,
        at.AMOUNT_TYPE_NAME,
        p.value_cost,
        vt.VALUE_TYPE_NAME,
        f.id_facture
    FROM position p
        JOIN facture f
          ON f.id_facture = p.id_facture
              AND f.status = 1
              AND p.status = 1
        JOIN client c
          ON c.id_client = f.id_client
              AND c.status = 1
        JOIN product pr
          ON pr.id_product = p.id_product
              AND pr.status = 1 
        JOIN value_type vt
          ON vt.ID_VALUE_TYPE = p.ID_VALUE_TYPE
          AND vt.STATUS = 1
        JOIN amount_type at
          ON at.ID_AMOUNT_TYPE = p.ID_AMOUNT_TYPE
          AND at.STATUS = 1
  with read only constraint V_POSITION_DETAILS;


CREATE OR REPLACE VIEW v_facture_details
AS
  SELECT rownum as nrumber,
        f.facture_name,
        c.fname,
        c.lname,
        f.value,
        vt.VALUE_TYPE_NAME,
        f.date_add,
        f.id_facture,
        f.id_user
    FROM facture f
        JOIN client c
          ON c.id_client = f.id_client
              AND c.status = 1
              AND f.status = 1
        JOIN VALUE_TYPE vt
          on vt.ID_VALUE_TYPE = f.ID_VALUE_TYPE
          and vt.status = 1
  with read only constraint v_facture_details; 
            

CREATE OR REPLACE VIEW V_WORKER_CONTRACT
AS
  SELECT w.fname,
         w.lname,
         w.pesel,
         ct.CONTRACT_NAME,
         c.salary,
         c.start_date,
         c.end_date,
         w.id_user
    FROM worker w
         JOIN contract c
           ON w.id_worker = c.id_worker
              AND w.status = 1
              AND c.status = 1
         JOIN contract_type ct
           ON ct.id_contract_type = c.id_contract_type
              AND ct.status = 1 
  WITH READ ONLY constraint V_WORKER_CONTRACT;


CREATE OR REPLACE VIEW V_WORKER_CURRENT_CONTRACT
AS
  SELECT w.fname,
         w.lname,
         w.pesel,
         ct.CONTRACT_NAME,
         c.salary,
         c.start_date,
         c.end_date,
         w.id_user
    FROM worker w
         JOIN contract c
           ON w.id_worker = c.id_worker
              AND w.status = 1
              AND c.status = 1
         JOIN contract_type ct
           ON ct.id_contract_type = c.id_contract_type
              AND ct.status = 1 
    WHERE TO_CHAR(sysdate, 'DD/MM/YYYY') between start_date and end_date
    --TU CHYBA TRZEBA BEDZIE ZMIENIC NA DD.MM.YYYY BO TAKI FORMAT WPROWADZA SYSTEM
  WITH READ ONLY constraint V_WORKER_CURRENT_CONTRACT;    

CREATE OR REPLACE VIEW V_WORKER_DETAILS
AS
  SELECT w.fname,
         w.lname,
         w.pesel,
         ct.CONTRACT_NAME,
         c.salary,
         c.start_date,
         c.end_date,
         con.EMAIL,
         con.tel_1,
         con.tel_2,
         a.postal_code,
         a.city,
         a.street,
         a.HNUMBER,
         w.ID_USER
    FROM worker w
         LEFT JOIN contract c
           ON w.id_worker = c.id_worker
              AND w.status = 1
              AND c.status = 1
         LEFT JOIN contract_type ct
           ON ct.id_contract_type = c.id_contract_type
           AND ct.status = 1 
         LEFT JOIN contact con
           ON con.id_worker = w.id_worker
           AND con.status = 1
         LEFT JOIN address a
           ON a.id_worker = w.id_worker
           AND a.status = 1
  WITH READ ONLY constraint V_WORKER_DETAILS;

CREATE OR REPLACE VIEW V_PRODUCT_DETAILS 
AS 
  SELECT rownum as position,
         P.PRODUCT_NAME,
         P.DESCRIPTION AS DESCRIPTION_PRODUCT,
         pt.PRODUCT_TYPE,
         pt.DESCRIPTION as DESCRIPTION_CATEGORY,
         pt.ID_USER
  FROM PRODUCT P 
    JOIN product_type pt
      on pt.id_product_type = P.ID_PRODUCT_TYPE
      and pt.status = 1
      and p.status = 1
  WITH READ ONLY constraint V_PRODUCT_DETAILS;


CREATE OR REPLACE VIEW V_WAREHOUSE_STATE
AS 
  SELECT rownum as position,
         pt.PRODUCT_TYPE,
         P.PRODUCT_NAME,
         w.product_amount,
         at.AMOUNT_TYPE_NAME,
         w.date_add,
         pt.ID_USER
  FROM warehouse w
    JOIN product p
      on w.id_product = p.id_product
      and w.status = 1
      and p.status = 1
    JOIN product_type pt
      on pt.id_product_type = P.ID_PRODUCT_TYPE
      and pt.status = 1
    JOIN AMOUNT_TYPE at
      on at.ID_AMOUNT_TYPE = w.id_amount_type
      and at.status = 1
  WITH READ ONLY constraint V_WAREHOUSE_STATE;


create or replace view V_ORDER_DETAILS 
AS
SELECT rownum AS position,
       ou.order_number,
       c.fname,
       c.lname,
       p.PRODUCT_NAME,
       ou.AMOUNT_PRODUCT,
       at.amount_type_name,
       ou.order_date,
       os.ORDER_STATUS_NAME,
       ou.id_user
  FROM order_user ou
       JOIN client c
         ON c.id_client = ou.id_client
       JOIN product p
         ON p.id_product = ou.id_product
       JOIN order_status os
         ON os.ID_ORDER_STATUS = ou.id_order_status 
       JOIN AMOUNT_TYPE at
         ON at.id_amount_type = ou.ID_AMOUNT_TYPE
         AND at.status = 1
WITH READ ONLY constraint V_ORDER_DETAILS;