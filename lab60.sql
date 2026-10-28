CREATE OR REPLACE TRIGGER restrict_sunday
BEFORE INSERT OR UPDATE OR DELETE ON EMP
BEGIN
    IF TO_CHAR(SYSDATE, 'DY',
       'NLS_DATE_LANGUAGE=ENGLISH') = 'SUN' THEN

        RAISE_APPLICATION_ERROR(
            -20001,
            'You cannot use the EMP table on Sunday'
        );

    END IF;
END;
/