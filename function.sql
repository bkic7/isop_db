CREATE OR REPLACE FUNCTION CHECK_EMAIL(
p_email IN VARCHAR2)
RETURN VARCHAR2 AS v_temp_email VARCHAR2(50);
BEGIN
    SELECT count(*) INTO v_temp_email FROM CONTACT WHERE email = p_email;
    CASE
    WHEN v_temp_email > 0 THEN RETURN 'ISTNIEJE';
    WHEN v_temp_email <= 0 THEN RETURN 'NIEISTNIEJE';
    ELSE RETURN 'ZLE';
    END CASE;
END CHECK_EMAIL;

select CHECK_EMAIL('tomaszlis@o2.pl') from dual;