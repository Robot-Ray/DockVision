-- Preserve whether a server-side session was created from a persistent login.
-- Existing sessions remain browser-session logins after this migration.
ALTER TABLE sessions
ADD COLUMN IF NOT EXISTS is_persistent BOOLEAN NOT NULL DEFAULT FALSE;