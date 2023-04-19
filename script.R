library(httr)
library(fs)

print("Checking which files we have:")
dir_ls()

#  the URL 
url_download <- "https://app.anm.gov.br/SIGBM/Publico/ClassificacaoNacionalDaBarragem/ExportarExcel"

# file name to save
file_name <- paste0("sigbm_download_", Sys.Date(), ".xlsx")


print("Making a POST request and writing file on disk:")
POST(url_download, write_disk(file_name, overwrite = TRUE))


print("Checking which files we have:")
dir_ls()

# ajudar o jorge no erro do gmail - ele vai enviar por email
# arrumar o actions e passar no começo da aula como foi pra arrumar
# Mariana - acompanhar se deu certo instalar o Git e configurar com o GitHub

