CREATE OR REPLACE FUNCTION customer_names(_first_name VARCHAR, _last_name VARCHAR)
RETURNS void
AS
$$
BEGIN
    INSERT INTO customer(first_name, last_name)
    VALUES(_first_name, _last_name);
END;
$$
LANGUAGE plpgsql

