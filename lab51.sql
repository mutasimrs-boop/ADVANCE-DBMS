CREATE OR REPLACE TRIGGER restrict_weekend
BEFORE INSERT OR UPDATE OR DELETE ON ACCOUNT1
BEGIN
    IF TO_CHAR(SYSDATE, 'DY',
       'NLS_DATE_LANGUAGE=ENGLISH') IN ('SAT', 'SUN') THEN

        RAISE_APPLICATION_ERROR(
            -20001,
            'Table access is not allowed on weekends'
        );

    END IF;
END;
/