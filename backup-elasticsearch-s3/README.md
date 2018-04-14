backup-elasticsearch-s3
=======================

Backup an elasticsearch instance to AWS S3.
This role does not use the repository-s3 plugin, because when I tested
it, it only worked from EC2 instances and not servers outside of AWS
(tried to query an IP that is only available within the EC2 network).

Requirements
------------

None

Role Variables
--------------

- `backup_elasticsearch_s3_host`: The host on which elasticsearch is running
- `backup_elasticsearch_s3_port`: The port on which elasticsearch can be reached
- `backup_elasticsearch_s3_config`: The path to the elasticsearch configuration
  file
- `backup_elasticsearch_s3_snapdir`: The directory to be used to store the
  snapshots
- `backup_elasticsearch_s3_tmpdir`: The directory in which the archive file
  should be created temporarily
- `backup_elasticsearch_s3_bucket`: The bucket to which the backup should
  be uploaded
- `backup_elasticsearch_s3_createdfile`: A file where we can check whether
  the snapshot task has already been created
- `backup_elasticsearch_s3_s3_user`: The user to be used for upload to S3
- `backup_elasticsearch_s3_healthchecks_urls`: A list of URLs to query (GET)
  when the job was run

Example Playbook
----------------

Using this role in a playbook is as simple as:

    - hosts: database
      roles:
         - backup-elasticsearch-s3

License
-------

MIT
