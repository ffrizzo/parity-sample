resource "aws_iam_instance_profile" "readonly_profile" {
  name = "readonly-profile"
  role = "${aws_iam_role.readonly_role.name}"
}

resource "aws_iam_role" "readonly_role" {
  name = "readonly-role"
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

resource "aws_iam_role_policy" "readonly_role_policy" {
  name = "readonly-role-policy"
  role = "${aws_iam_role.readonly_role.id}"

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

output "readonly_profile_id" {
  value = "${aws_iam_instance_profile.readonly_profile.id}"
}

output "readonly_profile_arn" {
  value = "${aws_iam_instance_profile.readonly_profile.arn}"
}

output "readonly_profile_name" {
  value = "${aws_iam_instance_profile.readonly_profile.name}"
}
