CREATE TABLE "bikes"."types" ("id" serial NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "type" text NOT NULL, "description" text NOT NULL, PRIMARY KEY ("id") );
CREATE OR REPLACE FUNCTION "bikes"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_bikes_types_updated_at"
BEFORE UPDATE ON "bikes"."types"
FOR EACH ROW
EXECUTE PROCEDURE "bikes"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_bikes_types_updated_at" ON "bikes"."types" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
