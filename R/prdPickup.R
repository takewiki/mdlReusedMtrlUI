#' 请输入文件
#'
#' @return 返回值
#' @import shiny
#' @import tsui
#'
#' @examples
#' prdPickupFunc_left()
prdPickupFunc_left<- function() {

  res <- tagList(
    tsui::mdl_dateRange(id = 'dateprdPickup_queryDates',label = '日期范围'),

    tsui::mdl_text2(id = 'txtprdPickup_company',label = '公司名称',value = '苏州赛普生物科技有限公司'),
    tsui::mdl_text2(id = 'txtprdPickup_workshop',label = '车间',value = '生产部'),
    tsui::mdl_text2(id = 'txtprdPickup_shiftNo',label = '班次',value = '白班'),

    br(),
    hr(),
    shinyWidgets::actionBttn(inputId = 'btnprdPickup_query',label = '查看'),
    tsui::mdl_download_button(id = 'btnprdPickup_dl',label = '下载'),
    hr(),
    tsui::uiTemplate(templateName = '回料使用记录表模板'),
    br(),
    tsui::mdl_file(id = 'fileprdPickup_upload',label = '请选择需要回料使用记录表EXCEL文件'),
    shiny::uiOutput(outputId = 'placeholderprdPickup_sheets'),
    shiny::actionButton(inputId = 'btnprdPickup_upload',label = '上传至服务器')
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
#' prdPickupFunc_right()
prdPickupFunc_right<- function() {
  res <- tagList(

    uiScrollX(mdl_dataTable(id = 'dataviewprdPickup_query',label = '回料使用记录表'))
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
#' prdPickupUI()
prdPickupUI <- function(tabTitle ='回料粉碎记录表',
                       colTitles =c('操作区域','报表区域'),
                       widthRates =c(4,8),
                       func_left = prdPickupFunc_left,
                       func_right =prdPickupFunc_right) {
  res = uiGen(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right )
  return(res)
}


