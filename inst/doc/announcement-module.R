## ----eval=F-------------------------------------------------------------------
#  # Inside program\global.R
#  
#  set_app_parameters(title              = "periscope Example Application",
#                     app_info           = HTML("Demonstrate periscope features and generated application layout"),
#                     log_level          = "DEBUG",
#                     app_version        = "1.0.0",
#                     loading_indicator  = list(html = spin_1(), color = 'rgba(22, 65, 124, 0.3)'),
#                     announcements_file = "./program/config/announce.yaml")

## ----eval=F-------------------------------------------------------------------
#  library(periscope2)
#  
#  app_dir = tempdir()
#  create_application(name = 'mysampleapp', location = app_dir, sample_app = TRUE)
#  runApp(paste(app_dir, 'mysampleapp', sep = .Platform$file.sep))

