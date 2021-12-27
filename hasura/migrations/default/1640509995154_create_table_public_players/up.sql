CREATE TABLE "public"."players" ("id" text NOT NULL, "energy" integer NOT NULL, "max_energy" integer NOT NULL, "xp" integer NOT NULL, "level" integer NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , UNIQUE ("id"), CONSTRAINT "Energy Constraint" CHECK (energy <= max_energy));
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_players_updated_at"
BEFORE UPDATE ON "public"."players"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_players_updated_at" ON "public"."players" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
