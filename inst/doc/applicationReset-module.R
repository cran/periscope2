## ----eval=F-------------------------------------------------------------------
# # Inside ui_body.R or similar UI file
# 
# appResetButton('appResetId')

## ----eval=F-------------------------------------------------------------------
# # Inside server_local.R
# 
# appReset(id = 'appResetId', logger = logger)

## ----eval=F-------------------------------------------------------------------
# library(periscope2)
# 
# app_dir = tempdir()
# create_application(name = 'mysampleapp', location = app_dir, sample_app = TRUE)
# runApp(paste(app_dir, 'mysampleapp', sep = .Platform$file.sep))

