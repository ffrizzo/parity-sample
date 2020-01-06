resource "aws_iam_instance_profile" "profile" {
  name = "packer-profile"
  role = aws_iam_role.role.name
}

resource "aws_iam_role" "role" {
  name = "packer-role"
  path = "/"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "role_policy" {
  name = "packer-role-policy"
  role = aws_iam_role.role.id

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Stmt1425916919000",
            "Effect": "Allow",
            "Action": [
              "s3:List*",
              "s3:Get*",
              "ec2:Describe*"
            ],
            "Resource": [
              "*"
            ]
        }
    ]
}
EOF
}

output "profile_id" {
  value = aws_iam_instance_profile.profile.id
}

output "profile_arn" {
  value = aws_iam_instance_profile.profile.arn
}

output "profile_name" {
  value = aws_iam_instance_profile.profile.name
}
