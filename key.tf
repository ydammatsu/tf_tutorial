resource "aws_key_pair" "my-kp" {
  key_name = "id_rsa_tf"
  public_key = file("id_rsa_tf.pub")
}
