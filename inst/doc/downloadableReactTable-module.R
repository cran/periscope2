## ----eval=F-------------------------------------------------------------------
# # Inside ui_body.R or ui_sidebar.R
# 
#  downloadableReactTableUI(
#              id            = "object_id1",
#              downloadtypes = c("csv", "tsv"),
#              hovertext     = "Download the data here!")

## ----eval = F-----------------------------------------------------------------
# # Inside server_local.R
#  library(shiny)
#  library(periscope2)
#  library(reactable)
# 
# table_state <- downloadableReactTable(
#              id                 = "object_id1",
#              table_data         = reactiveVal(iris),
#              download_data_fxns = list(csv = reactiveVal(iris), tsv = reactiveVal(iris)),
#              selection_mode     = "multiple",
#              pre_selected_rows  = function() {c(1, 3, 5)},
#              table_options      = list(columns = list(
#                  Sepal.Length = colDef(name = "Sepal Length"),
#                  Sepal.Width  = colDef(filterable = TRUE),
#                  Petal.Length = colDef(show = FALSE),
#                  Petal.Width  = colDef(defaultSortOrder = "desc")),
#                  showSortable = TRUE,
#                  theme = reactableTheme(
#                      borderColor = "#dfe2e5",
#                      stripedColor = "#f6f8fa",
#                      highlightColor = "#f0f5f9",
#                      cellPadding = "8px 12px")))
# 
#         observeEvent(table_state(), { print(table_state()) })
# 
# # NOTE: table_state is the reactive return value, captured for later use

## ----eval=F-------------------------------------------------------------------
# library(periscope2)
# 
# app_dir = tempdir()
# create_new_application(name = 'mysampleapp', location = app_dir, sample_app = TRUE)
# runApp(paste(app_dir, 'mysampleapp', sep = .Platform$file.sep))

