resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "private"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    }, {
    git_org  = "pvondemhagen"
    git_repo = "Prisma-Cloud-IaC-Demo"
    customer = "Customer-Name-Here"
    }, {
    yor_trace = "78cbb9e3-ce7e-42bb-a573-12d7db25ff96"
  })
}
resource "aws_s3_bucket" "financials" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-customer-financial-bucket"
  acl           = "public-read"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-financial"
    Environment = local.resource_prefix.value
    }, {
    git_org  = "pvondemhagen"
    git_repo = "Prisma-Cloud-IaC-Demo"
    customer = "Customer-Name-Here"
    }, {
    yor_trace = "bfbe69d5-7829-4ef0-909e-03af09afa3d5"
  })
}
# resource "aws_s3_bucket" "big" {
#   # bucket is public
#   # bucket is not encrypted
#   # bucket does not have access logs
#   # bucket does not have versioning
#   bucket        = "${local.resource_prefix.value}-big-test-bucket"
#   acl           = "private"
#   force_destroy = true
#   tags = merge({
#     Name        = "${local.resource_prefix.value}-data"
#     Environment = local.resource_prefix.value
#     }, {
#     git_org  = "davesc63"
#     git_repo = "Prisma-Cloud-IaC-Demo-update"
#     customer = "sso"
#     }, {
#     #yor_trace = "28cabed6-3d82-40c6-b2be-7323c0a7c8d5"
#   })
## }
resource "aws_s3_bucket" "bhp" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-bhp-bucket"
  acl           = "public-read"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-bhp"
    Environment = local.resource_prefix.value
    }, {
    git_org  = "pvondemhagen"
    git_repo = "Prisma-Cloud-IaC-Demo"
    customer = "BHP-IaC-Demo"
    }, {
    yor_trace = ""
  })
}
resource "aws_s3_bucket" "bhpdemo" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-bhp-bucket2"
  acl           = "public-read"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-bhp2"
    Environment = local.resource_prefix.value
    }, {
    git_org  = "pvondemhagen"
    git_repo = "Prisma-Cloud-IaC-Demo"
    customer = "BHP-IaC-Demo2"
    }, {
    yor_trace = ""
  })
}
