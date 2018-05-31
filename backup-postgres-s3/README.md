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
- `backup_postgres_s3_gpgkey`: The public key of the GPG key that you want
  to use for encryption (optional, if you do not specify a key, no encryption
  will be used)
- `backup_postgres_s3_gpgkey_mail`: The mail address of the GPG key you want
  to use for encryption (optional)

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: database
      vars_files:
         - "vars/backup_postgres_s3.yml"
      roles:
         - backup-postgres-s3

With `vars/backup_postgres_s3.yml` looking similar to this:

    backup_postgres_s3_bucket: my-backup-bucket
    backup_postgres_s3_s3_user: my-user
    backup_postgres_s3_gpgkey_mail: myself@example.com
    backup_postgres_s3_gpgkey: |
        -----BEGIN PGP PUBLIC KEY BLOCK-----

        [all the gnupg key content]
        -----END PGP PUBLIC KEY BLOCK-----

License
-------

MIT
