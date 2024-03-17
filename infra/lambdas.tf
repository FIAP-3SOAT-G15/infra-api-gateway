data "aws_lambda_function" "app_sign_in" {
  function_name = "app-sign-in"
}

data "aws_lambda_function" "app_sign_up" {
  function_name = "app-sign-up"
}
