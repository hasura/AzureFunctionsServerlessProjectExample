CREATE TABLE "bikes"."models" ("id" serial NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "model" text NOT NULL, "description" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("model"), UNIQUE ("id"));
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
CREATE TRIGGER "set_bikes_models_updated_at"
BEFORE UPDATE ON "bikes"."models"
FOR EACH ROW
EXECUTE PROCEDURE "bikes"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_bikes_models_updated_at" ON "bikes"."models" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
