module "mod_terr" {
    source = "./../default"

    my_ami        =  var.my_ami
    key           =  var.key
    instance_type =  var.instance_type
    root_vol_dev  =  var.root_vol_size
}