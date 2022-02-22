-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE OR REPLACE FUNCTION user_closet_tokens_sum(closet_pieces_row closet_pieces, hasura_session json)
-- RETURNS bigint AS $$
-- SELECT t.amount FROM public.closet_tokens t WHERE t.token_id = closet_pieces_row.id AND t.owner = hasura_session ->> 'x-hasura-user-id';
-- $$ LANGUAGE sql STABLE;
