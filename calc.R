calc = function(x, y, operator){
  num = is.numeric(x) & is.numeric(y)
  num = ifelse(num, "numeric", "none")
  ans = switch(num, "numeric" = {
    res = operator(x, y)
    paste(x, substitute(operator), y, "is", res)
  },
  "none" = {
    paste("Nah dude. Wrong operandos")
  })
  return(ans)
}
