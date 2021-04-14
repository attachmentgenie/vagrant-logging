provider "minio" {
  minio_server     = "minio.logging.vagrant:9090"
  minio_region     = "us-east-1"
  minio_access_key = "admin"
  minio_secret_key = "supersecret"
}

resource "minio_s3_bucket" "loki" {
  bucket = "loki"
  acl    = "public"
}
