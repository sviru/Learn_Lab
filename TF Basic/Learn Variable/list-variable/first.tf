
output "printuser" {
    value = "First user is ${var.users[0]} ${var.lastname[1]}, Second user is ${var.users[1]} ${var.lastname[1]}"
}

output "printuser3" {
    value = "Third user is ${var.users[2]} ${var.lastname[0]}"
}