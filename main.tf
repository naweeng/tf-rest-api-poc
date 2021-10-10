<<<<<<< HEAD
provider "restapi" {
  uri = "https://rest.logentries.com"
  debug = true
  write_returns_object = true

  headers = {
    "x-api-key" = "f43010a1-d30e-4f82-9105-9c0492418a70",
    "Content-Type" = "application/json"
  }
  create_method = "POST"
  update_method = "PUT"
  destroy_method = "DELETE"
}

resource "restapi_object" "tf_logset" {
  path = "/management/logsets"
  data = "{\"logset\":{\"name\":\"tf_logset_test_new_1\",\"user_data\":{}}}"
}
