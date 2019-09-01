backup-ftp-s3
==================

Backup data from an FTP server to AWS S3.

Requirements
------------

None

Role Variables
--------------

- `backup_ftp_s3_jobname`: The name of this job. Will be used for file name
  of the cronjob file, for file name of the backup file and so on
- `backup_ftp_s3_ftp_server`: The hostname of the FTP server
- `backup_ftp_s3_ftp_path`: A path on the FTP server which should be backed up
  (e.g. `/` for everything)
- `backup_ftp_s3_ftp_user`: The username to login to FTP
- `backup_ftp_s3_ftp_password`: The username to login to FTP
- `backup_ftp_s3_tmpdir`: The directory to be used to store the
  intermediate file
- `backup_ftp_s3_bucket`: The bucket to which the file should be uploaded
- `backup_ftp_s3_s3_user`: The user to be used for upload to S3
- `backup_ftp_s3_prometheus_pushgateway`: The URL of the Prometheus
  Pushgateway for monitoring
- `backup_postgres_s3_prometheus_metric_name`: The prometheus signal name to
  use for signalling Prometheus
- `backup_ftp_s3_gpgkey`: The public key of the GPG key that you want
  to use for encryption (optional, if you do not specify a key, no encryption
  will be used)
- `backup_ftp_s3_gpgkey_mail`: The mail address of the GPG key you want
  to use for encryption (optional)

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: database
      vars_files:
         - "vars/backup_ftp_s3.yml"
      roles:
         - backup-ftp-s3

With `vars/backup_ftp_s3.yml` looking similar to this:

    backup_ftp_s3_bucket: my-backup-bucket
    backup_ftp_s3_s3_user: my-user
    backup_ftp_s3_gpgkey_mail: myself@example.com
    backup_ftp_s3_gpgkey: |
        -----BEGIN PGP PUBLIC KEY BLOCK-----

        [all the gnupg key content]
        -----END PGP PUBLIC KEY BLOCK-----

License
-------

MIT
