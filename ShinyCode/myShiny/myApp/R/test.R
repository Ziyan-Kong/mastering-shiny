library(profvis)

f <- function() {
  pause(0.2)
  g()
  h()
  10
}
g <- function() {
  pause(0.1)
  h()
}
h <- function() {
  pause(0.3)
}

profvis::profvis(f())
