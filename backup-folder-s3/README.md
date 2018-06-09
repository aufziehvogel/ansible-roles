backup-folder-s3
================

Backup a folder with all of its contents to AWS S3.

Requirements
------------

None

Role Variables
--------------

- `backup_folder_s3_backupname`: A backup name for this job, used for the
  target directory and filenames of your backups
- `backup_folder_s3_folder`: The folder you want to upload to S3 for backup
- `backup_folder_s3_tmpdir`: The directory to be used to store the
  intermediate file
- `backup_folder_s3_bucket`: The bucket to which the file should be uploaded
- `backup_folder_s3_user`: The user to be used for upload to S3
- `backup_folder_s3_healthchecks_url`: The healthchecks.io to signal when
  the job was run
- `backup_folder_s3_gpgkey`: The public key of the GPG key that you want
  to use for encryption (optional, if you do not specify a key, no encryption
  will be used)
- `backup_folder_s3_gpgkey_mail`: The mail address of the GPG key you want
  to use for encryption (optional)

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: data
      vars_files:
         - "vars/backup_folder_s3.yml"
      roles:
         - backup-folder-s3

With `vars/backup_folder_s3.yml` looking similar to this:

    backup_folder_s3_folder: /data
    backup_folder_s3_bucket: my-backup-bucket
    backup_folder_s3_user: my-user
    backup_folder_s3_gpgkey_mail: myself@example.com
    backup_folder_s3_gpgkey: |
        -----BEGIN PGP PUBLIC KEY BLOCK-----

        [all the gnupg key content]
        -----END PGP PUBLIC KEY BLOCK-----

License
-------

MIT
