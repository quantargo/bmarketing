library(bmarketing)


df <- import_data_from_csv("~/CloudStation/Projekte/r_projects/bmarketing2.csv")

df[is.na(df$Y), "Y"] <- 0
df <- clean_data(df, target_var = "Y")

df <- transform_data(df, cols_impute = c("AGE", "DURATION"), cols_log = c("AGE", "DURATION"), cols_normalize = "AGE")

target_var <- "Y"
m <- model_data(df, target_var)

model_plot(m)

target <- df[, target_var][[1]]
predictions <- model_predict(m, df)


model_performance(target, predictions)
