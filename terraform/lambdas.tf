data "aws_lambda_function" "auth_sign_in" {
  function_name = "auth-sign-in"
}

data "aws_lambda_function" "auth_sign_up" {
  function_name = "auth-sign-up"
}
