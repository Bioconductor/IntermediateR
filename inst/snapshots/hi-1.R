#' Help start conversations
#'
#' This function generates some helpful text that can be used to start
#' conversations in all kinds of awkward social situations.
#'
#' @param who character(1) The name of the person you wish to start a
#'     conversation with.
#'
#' @return character(1) A line of text to be used when starting conversations.
#'
#' @examples
#' hi("Martin Morgan")
#'
#' @export
hi <- function(who) {
    paste("hello", who, "you have", nchar(who), "letters in your name!")
}
