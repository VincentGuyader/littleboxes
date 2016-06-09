dd <- function(x) {
  if (nchar(x) <= 56) {
    base <- (60 - nchar(x) - 2)/2
    return(paste(c("#", rep(" ", floor(base)), x, rep(" ", ceiling(base)),
                   "#"), collapse = ""))
  }
  s1 <- strsplit(x, " ")[[1]]
  c(dd(paste(s1[1:floor(length(s1)/2)], collapse = " ")), dd(paste(s1[ceiling(length(s1)/2):length(s1)],
                                                                   collapse = " ")))
}


toutbeau <- function(x, l = 60) {
  # print(x)
  x <- gsub("^#.", "", x)
  x <- gsub("\n", " ", x)
  res <- paste(rep("#", l), collapse = "")
  res <- c(res, paste(c("#", rep(" ", l - 2), "#"), collapse = ""))


  res <- c(res, do.call(c, as.list(dd(x))))




  res <- c(res, paste(c("#", rep(" ", l - 2), "#"), collapse = ""))
  res <- c(res, paste(rep("#", l), collapse = ""))
  res <- c(res, "")
  res
  res <- paste(res, collapse = "\n")
  return(res)
}


nicetitle <- function() {
  context <- rstudioapi::getActiveDocumentContext()

  for (sel in context$selection) {

    if (sel$text == "")
      next

    rstudioapi::modifyRange(sel$range, toutbeau(sel$text), context$id)
    break
  }
}
