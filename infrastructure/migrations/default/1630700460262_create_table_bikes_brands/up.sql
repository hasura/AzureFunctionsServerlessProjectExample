CREATE TABLE "bikes"."brands" ("id" serial NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "brand" text NOT NULL, "notes" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("brand"));
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
CREATE TRIGGER "set_bikes_brands_updated_at"
BEFORE UPDATE ON "bikes"."brands"
FOR EACH ROW
EXECUTE PROCEDURE "bikes"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_bikes_brands_updated_at" ON "bikes"."brands" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
