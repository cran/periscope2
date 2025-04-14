## ----eval=F-------------------------------------------------------------------
# # Inside program\global.R
# 
# load_announcements(announcement_location_id = "./program/config/announce.yaml")

## ----eval=F-------------------------------------------------------------------
# library(periscope2)
# 
# app_dir = tempdir()
# create_application(name = 'mysampleapp', location = app_dir, sample_app = TRUE)
# runApp(paste(app_dir, 'mysampleapp', sep = .Platform$file.sep))

