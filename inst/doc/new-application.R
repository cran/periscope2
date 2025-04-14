## ----eval=F-------------------------------------------------------------------
# # Add a user action to the log
# loginfo("Your Information Message with %s, %s parameters", parm1, parm2, logger = ss_userAction.Log)
# 
# # Add a warning to the log
# logwarn("Your Warning Message!", logger = ss_userAction.Log)

## ----eval=F-------------------------------------------------------------------
# createPSAlert(id      = 'bodyAlert',
#               options = list(title    = 'alert title',
#                              status   = 'warning',
#                              closable = TRUE,
#                              content  = alert contents))
# # id is the location of the alert and can be one of:
# #   'sidebarRightAlert', 'sidebarBasicAlert', 'bodyAlert', 'footerAlert' and 'headerAlert'
# 
# # status sets the bootstrap styling and can be one of:
# #    'primary', 'success', 'warning', 'danger' or 'info'

## ----eval=F-------------------------------------------------------------------
# ui_tooltip(id        = 'tooltipID',
#            label     = 'label text (optional)',
#            text      = 'text content',
#            placement = 'top')
# 
# # placement sets the tool-tip pop-up location and can be one of:
# # 'top', 'bottom', 'left' or 'right'

## ----eval=F-------------------------------------------------------------------
# library(periscope2)
# app_dir = tempdir()
# 
# # application without a right sidebar
# create_application(name       = 'mytestapp',
#                    location   = app_dir,
#                    sample_app = TRUE)
# 
# # application without a left sidebar or a right sidebar
# create_application(name         = 'mytestapp',
#                    location     = app_dir,
#                    sample_app   = TRUE,
#                    left_sidebar = FALSE)
# 
# # application with left and right sidebars
# create_application(name          = 'mytestapp',
#                    location      = app_dir,
#                    sample_app    = TRUE,
#                    right_sidebar = TRUE)

## ----eval=F-------------------------------------------------------------------
# runApp(paste(app_dir, 'mytestapp', sep = .Platform$file.sep))

## ----eval=F-------------------------------------------------------------------
# library(periscope2)
# app_dir = tempdir()
# 
# # application without a right sidebar
# create_application(name     = 'mytestapp',
#                    location = app_dir)
# 
# # application without a left sidebar or a right sidebar
# create_application(name         = 'mytestapp',
#                    location     = app_dir,
#                    left_sidebar = FALSE)
# 
# # application with a right sidebar
# create_application(name          = 'mytestapp',
#                    location      = app_dir,
#                    right_sidebar = TRUE)

## ----eval=F-------------------------------------------------------------------
# runApp('mytestapp', appDir = app_dir)

## ----eval=F-------------------------------------------------------------------
# # Plain text title
# set_app_parameters(title = "My Application Title")
# 
# # Application Title links to an external url
# set_app_parameters(title     = "My Application Title",
#                    titleinfo = "Application Valid Website")
# 
# # Application Title links to a modal window with HTML content
# set_app_parameters(title     = "My Application Title",
#                    titleinfo = HTML("<h3>This is information about this application</h3>",
#                                     "<p><b>Author: </b>Me</p>",
#                                     "<p><b>Date: </b>", Sys.Date(), "</p>"))
# 
# # Application Title links to a modal window with HTML content, setting log level to 'DEBUG',
# # using simple loading screen, init app version and pass announcements configuration module file
# set_app_parameters(title              = "periscope Example Application",
#                    app_info           = HTML("Demonstrate periscope features and generated application layout"),
#                    log_level          = "DEBUG",
#                    app_version        = "1.0.0",
#                    loading_indicator  = list(html = tagList(spin_1(), "Loading ...")),
#                    announcements_file = "./program/config/announce.yaml")

## ----eval=F-------------------------------------------------------------------
# sidebar_menu <-  sidebarMenu(
#     sidebarHeader("Periscope2 Features"),
#     menuItem(
#         "Application Setup",
#         tabName = "application_setup",
#         icon    = icon("building")
#     ),
#     menuItem(
#         "Periscope2 Modules",
#         tabName = "periscope_modules",
#         icon    = icon("cubes")
#     ),
#     menuItem(
#         "User Notifications",
#         tabName = "user_notifications",
#         icon    = icon("comments")
#     )
# )
# 
# add_ui_left_sidebar(sidebar_menu = list(sidebar_menu))

## ----eval=F-------------------------------------------------------------------
# sidebar_element <- div(checkboxInput("hideFileOrganization", "Show Files Organization"))
# 
# add_ui_right_sidebar(sidebar_elements = list(sidebar_element))

## ----eval=F-------------------------------------------------------------------
# body1 <- box(id          = "bodyElement1",
#              title       = "Box 1",
#              width       = 8,          #2/3 of the width (for 12 columns layout)
#              status      = "primary",  #colored bar at the top
#              collapsible = TRUE,
#              collapsed   = FALSE,
#              htmlOutput("example1") )
# 
# body2 <- box(id          = "bodyElement2",
#              title       = "Box 2",
#              width       = 4,          #1/3 of the width  (for 12 columns layout)
#              status      = "danger",   #colored bar at the top
#              collapsible = FALSE,
#              p("Some great text in paragraph format"),
#              pre("A pre-formatted (e.g. code) block"),
#              actionButton("exButton", label = "Example") )
# 
# add_ui_body(body_elements = list(body1, body2))

## ----eval=F-------------------------------------------------------------------
# # Navbar skin. "dark" or "light"
# skin <- "light"
# 
# # Navbar status
# status <- "white"
# 
# # Whether to separate the navbar and body by a border.
# border <- TRUE
# 
# # Whether items should be compacted
# compact <- FALSE
# 
# # Icon of the main sidebar toggle
# left_sidebar_icon <- shiny::icon("bars")
# 
# # Icon to toggle the controlbar
# right_sidebar_icon <- shiny::icon("th")
# 
# add_ui_header(skin               = skin,
#               status             = status,
#               border             = border,
#               compact            = compact,
#               left_sidebar_icon  = left_sidebar_icon,
#               right_sidebar_icon = right_sidebar_icon)

## ----eval=F-------------------------------------------------------------------
# # Left text
# left  <- a(
#     href   = "https://periscopeapps.org/",
#     target = "_blank",
#     "periscope2"
# )
# 
# # Right text
# right <- "2022"
# 
# # Whether to fix the footer in place when scrolling
# fixed <- FALSE
# 
# add_ui_footer(left  = left,
#               right = right,
#               fixed = fixed)

## ----eval=F-------------------------------------------------------------------
# source("program/fxn/makeplot.R")
# 
# #build the deferred UI from ui_body.R
# output$example1 <- renderUI({
#     list(downloadFileButton("ex_d1", c("csv"), "Download CSV"),
#          hr(),
#          p("Some great explanatory text in my application"))
#     })
# 
# downloadFile("ex_d1", ss_userAction.Log, "mydownload", list(csv=get_ref_data))
# 
# observeEvent(input$exButton, {
#     loginfo("exButton Pressed!", logger = ss_userAction.Log)
#     createPSAlert(
#         id = 'alert place',
#         options  = list(title    = 'alert title',
#                         status   = 'alert status'',
#                                          closable = TRUE,
#                                          content  = "alert contents"))
# })

## ----eval=F-------------------------------------------------------------------
# ref_data <- read.csv("program/data/mydata.csv")
# 
# get_ref_data <- function() {
#     ref_data
# }

