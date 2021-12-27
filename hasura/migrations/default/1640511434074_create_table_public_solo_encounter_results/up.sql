CREATE TABLE "public"."solo_encounter_results" ("id" bigserial NOT NULL, "player_id" text NOT NULL, "encounter_id" integer NOT NULL, "result" boolean NOT NULL, "completed_timestamp" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("id") , FOREIGN KEY ("player_id") REFERENCES "public"."players"("id") ON UPDATE no action ON DELETE no action, FOREIGN KEY ("encounter_id") REFERENCES "public"."encounters"("id") ON UPDATE no action ON DELETE no action);
