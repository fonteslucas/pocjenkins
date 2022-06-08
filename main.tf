
module "s3web" {
    source = "./modules/s3"
    bucket_name = "lfg"
    produto = "akjsghdiuasd"
}

/*
module "s3webbad" {
    source = "./modules/bads3"
    bucket_name = "lfg"
    produto = "Veiculos"
}
*/

