backup-mongodb-s3
=================

Backup a mongo database to AWS S3.

Requirements
------------

None

Role Variables
--------------

- `backup_mongodb_s3_host`: The host on which mongodb is running
- `backup_mongodb_s3_ssl`: Whether to use SSL or not
- `backup_mongodb_s3_username`: The username to use for login to mongodb
- `backup_mongodb_s3_password`: The password to use for login to mongodb
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
         - backup-mongodb-s3

License
-------

MIT
