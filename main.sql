-- Will map the triggers here
-- will map the tables after the triggers
\i './database/teams/pre_auth.sql';
\i './database/teams/profile.sql';
\i './database/teams/manage-users.sql';
\i './database/teams/channals.sql';
\i './database/teams/channel-members.sql';
\i './database/teams/messages.sql';


-- will map the views here after rendering the tables