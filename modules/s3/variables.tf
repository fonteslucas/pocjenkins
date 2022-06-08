variable "bucket_name" {
  type = string
}

variable "produto" {
  type = string
  validation {
    condition = contains(["Valores",
      "Consignado",
      "Veiculos",
      "Investimento",
      "Cartoes",
      "Banco Digital",
      "Site-institucional",
      "Formalizacao",
      "PrevencaoFraude",
      "CRM",
      "DataLake",
      "OpenAPI",
      "Adquirencia",
      "Compartilhado",
      "Openbanking",
    "Credito"], var.produto)
    error_message = "Valores válidos: Valores, Consignado, Veiculos, Investimento, Cartoes, Banco Digital, Site-institucional, Formalizacao, PrevencaoFraude, CRM, DataLake, OpenAPI, Adquirencia, Compartilhado, Openbanking, Credito."
  }
}
