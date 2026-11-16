-- Which messages each account has handed to Intake: per folder, each file's Maildir unique name (the file name before ":", which a
-- reader's flag change and the move from new/ to cur/ both keep). A set, not a timestamp, so mail copied in with an old mtime is still found.
CREATE TABLE maildir_seen (
    account TEXT NOT NULL,
    folder  TEXT NOT NULL,
    uniq    TEXT NOT NULL,
    PRIMARY KEY (account, folder, uniq)
);
