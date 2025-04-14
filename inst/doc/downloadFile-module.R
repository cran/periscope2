## ----eval=F-------------------------------------------------------------------
# # Inside ui_body.R or ui_sidebar.R
# 
# #single download type
# downloadFileButton(id            = "object_id1",
#                    downloadtypes = c("csv"),
#                    hovertext     = "Button 1 Tooltip")
# 
# #multiple download types
# downloadFileButton(id            = "object_id2",
#                    downloadtypes = c("csv", "tsv"),
#                    hovertext     = "Button 2 Tooltip")

## ----eval = F-----------------------------------------------------------------
# # Inside server_local.R
# 
# #single download type
# downloadFile(id           = "object_id1",
#              logger       = ss_userAction.Log,
#              filenameroot = "mydownload1",
#              datafxns     = list(csv = mydatafxn1),
#              aspectratio  = 1)
# 
# #multiple download types
# downloadFile(id           = "object_id2",
#              logger       = ss_userAction.Log,
#              filenameroot = "mytype2",
#              datafxns     = list(csv = mydatafxn1, xlsx = mydatafxn2),
#              aspectratio  = 1)

## ----eval=F-------------------------------------------------------------------
# library(periscope2)
# 
# app_dir = tempdir()
# create_application(name = 'mysampleapp', location = app_dir, sample_app = TRUE)
# runApp(paste(app_dir, 'mysampleapp', sep = .Platform$file.sep))

