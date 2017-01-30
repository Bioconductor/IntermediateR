#' Help start conversations
#'
#' This function generates some helpful text that can be used to start
#' conversations in all kinds of awkward social situations.
#'
#' @param who character(1) The name of the person you wish to start a
#'     conversation with.
#'
#' @param how character(1) How to greet the conversant. Either "say"
#'     (default, no change), "shout" (upper-case), "whisper" (lower-case)
#' 
#' @return character(1) A line of text to be used when starting conversations.
#'
#' @examples
#' hi("Martin Morgan")
#' hi("Martin Morgan", "shout")
#' hi("Martin Morgan", "whisper")
#'
#' @export
hi <- function(who, how=c("say", "shout", "whisper")) {
    how <- match.arg(how)
    fun <- switch(how, say=say, shout=shout, whisper=whisper)
    paste("hello", fun(who),  "you have", nchar(who), "letters in your name!")
}

say <- function(who) {
    who
}

shout <- function(who) {
    toupper(who)
}

whisper <- function(who) {
    tolower(who)
}
