



#' 请输入文件
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' stockRptFunc_left()
stockRptFunc_left<- function() {

  res <- tagList(

    shinyWidgets::actionBttn(inputId = 'btnstockRpt_query',label = '查看'),
    tsui::mdl_download_button(id = 'btnstockRpt_dl',label = '下载'),
    hr(),
    tsui::uiTemplate(templateName = '产品分组模板'),
    br(),
    tsui::mdl_file(id = 'filestockRpt_upload',label = '请选择需要产品分组EXCEL文件'),
    shiny::uiOutput(outputId = 'placeholderstockRpt_sheets'),
    shiny::actionButton(inputId = 'btnstockRpt_upload',label = '上传至服务器')
  )
  return(res)

}






#' 请输入文件
#'
#' @return 返回值
#' @import tsui
#' @import shiny
#'
#' @examples
#' stockRptFunc_right()
stockRptFunc_right<- function() {
  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'dataviewstockRpt_query',label = '产品分组'))
  )
  return(res)

}

#' 产品分组UI
#'
#' @param tabTitle 标题
#' @param com_left 左
#' @param com_right 右
#'
#' @return 返回值
#' @export
#'
#' @examples
#' stockRptUI()
stockRptUI <- function(tabTitle ='产品分组',
                       colTitles =c('操作区域','报表区域'),
                       widthRates =c(4,8),
                       func_left = stockRptFunc_left,
                       func_right =stockRptFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}


