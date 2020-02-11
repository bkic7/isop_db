create or replace PROCEDURE r_update_facture_value (
p_id_facture IN FACTURE.ID_FACTURE%TYPE) 
AS v_temp_value INTEGER;
BEGIN
    SELECT sum(VALUE_COST) INTO v_temp_value
    FROM POSITION
    WHERE id_facture = p_id_facture;
    IF v_temp_value > 0 THEN
        UPDATE facture
        SET value = v_temp_value
        WHERE id_facture = p_id_facture;
    ELSE 
        UPDATE facture
        SET value = 'BrakDanych'
        WHERE id_facture = p_id_facture;
    END IF;
    COMMIT;
END r_update_facture_value;


CREATE OR REPLACE PROCEDURE R_UPDATE_WAREHOUSE_STATE (
OPERATION IN VARCHAR2,
change_amount IN NUMBER,
p_id_warehouse IN warehouse.id_warehouse%TYPE) 
AS v_temp_amount NUMBER;
BEGIN
    CASE 
    WHEN OPERATION='add' THEN           
        UPDATE WAREHOUSE
           SET PRODUCT_AMOUNT = PRODUCT_AMOUNT + CHANGE_AMOUNT
         WHERE ID_WAREHOUSE = P_ID_WAREHOUSE;
         COMMIT;         
    WHEN OPERATION='reduce' THEN
        SELECT PRODUCT_AMOUNT
          INTO v_temp_amount
          FROM warehouse
         WHERE id_warehouse = p_id_warehouse;         
        IF v_temp_amount >= change_amount THEN       
            UPDATE WAREHOUSE
               SET PRODUCT_AMOUNT = PRODUCT_AMOUNT - CHANGE_AMOUNT
             WHERE ID_WAREHOUSE = P_ID_WAREHOUSE; 
             COMMIT;
        ELSE dbms_output.put_line ('Zbyt maly stan magazynowy');
        END IF;       
    ELSE 
        dbms_output.put_line ('Bledne dane wejsciowe'); 
    END CASE;    
END R_UPDATE_WAREHOUSE_STATE;