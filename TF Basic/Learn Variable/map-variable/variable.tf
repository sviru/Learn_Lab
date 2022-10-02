variable "usersage" {
  type = map
  default = {
    "viru" = 40
    "Vijay" = 25
  }
}

//output "userage" {
 // value = "my name is Viru and my age is ${lookup(var.usersage, "viru")}"
//}

//If need to accept value fro user at run time use below code 
//variable "username" {
 //   type = string  
//}

// With above new variable define use below output
output "userage" {
  value = "my name is ${var.username} and my age is ${lookup(var.usersage, "${var.username}")}"
}

//Note 1 - if want to pass the value from command prompt while run the TF use below 
//terraform plan -var 'username=viru'
//Note 2 - if want to pass map value at command prompt use below 
//terraform plan -var 'usersage={"viru":40,"vijay":25}'