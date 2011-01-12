# source code from "Introducing Closures" January 1, 2011

push <- function(x, value, ...) UseMethod("push")
pop  <- function(x, ...) UseMethod("pop")
push.stack <- function(x, value, ...) x$push(value)
pop.stack  <- function(x, ...) x$pop()

shift <- function(x, value, ...) UseMethod("shift")
unshift  <- function(x, ...) UseMethod("unshift")
shift.stack <- function(x, value, ...) x$shift(value)
unshift.stack  <- function(x, ...) x$unshift()

new_stack <- function() { 
  .Data <- NULL
  stack <- new.env()
  stack$.Data <- vector()
  stack$push <- function(x) .Data <<- c(.Data,x)
  stack$pop  <- function() {
    tmp <- .Data[length(.Data)]
    .Data <<- .Data[-length(.Data)]
    return(tmp)
  }
  environment(stack$push) <- as.environment(stack)
  environment(stack$pop) <- as.environment(stack)
  class(stack) <- "stack"
  stack
}

new_betterstack <- function() {
  .Data <- NULL
  stack <- new_stack()
  stack_env <- as.environment(stack)
  stack$shift   <- function(x) .Data <<- c(x, .Data)
  stack$unshift <- function() {
    tmp <- .Data[1]
    .Data <<- .Data[-1]
    return(tmp)
  }
  environment(stack$shift)   <- stack_env
  environment(stack$unshift) <- stack_env
  class(stack) <- c("betterstack", "stack")
  stack
}
