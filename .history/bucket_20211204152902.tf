resource "aws_s3_bucket" "ForLogsNSnapshotsdoebi" {
        bucket = var.logs_bucket
        acl = "private"
        tags = {
          Name  =   "Bucket for Logs and Snapshots"
          Environment = "Dev"
          Terraform = true
        }
        server_side_encryption_configuration {
            rule {
                apply_server_side_encryption_by_default {
                    kms_master_key_id = "61a84e81-1bd8-4f5e-bc4b-24810b93ebfc"
                    sse_algorithm     = "aws:kms"
                }
            }
        }
}
resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
#   deletion_window_in_days = 10
  enable_key_rotation = true
  policy = data.aws_iam_policy_document.KMS_key_policy.json
}

data "aws_caller_identity" "current"{} # making api call to fish out 

data "aws_iam_policy_document" "KMS_key_policy" {
    statement {
            sid = "run this bucket"
                principals {
                    type = "AWS"
                    identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"] # getting the root account arn
                }
            actions = ["kms:*"]
            effect = "Allow"
            resources = ["*"]
        
    }
}