--liquibase formatted.sql
--changeset michael.cawayan:INT_COMMUNICATION.JOURNAL_CREATION contextFilter:PH endDelimiter:/ runOnChange:true

BEGIN
  appdeploy.create_journal_tables('INT_COMMUNICATION','SAS_AFF_PREDIAL', flag_recreate => 'Y');
END;
/