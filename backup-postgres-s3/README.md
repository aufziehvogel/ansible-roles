backup-postgres-s3
==================

Backup a full postgres database to AWS S3.

Requirements
------------

None

Role Variables
--------------

- `backup_postgres_s3_db_user`: The user which should be used for dump of
  database
- `backup_postgres_s3_tmpdir`: The directory to be used to store the
  intermediate file
- `backup_postgres_s3_bucket`: The bucket to which the file should be uploaded
- `backup_postgres_s3_s3_user`: The user to be used for upload to S3
- `backup_postgres_s3_healthchecks_url`: The healthchecks.io to signal when
  the job was run

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: database
      roles:
         - backup-postgres-s3

License
-------

MIT
