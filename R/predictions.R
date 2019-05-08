
#################PPREDICTIONS#################
predictions <- function(bmarketing, dt_model)
{
  predict(dt_model, bmarketing, type = "class")
}