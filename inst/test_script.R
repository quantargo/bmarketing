library(bmarketing)


df <- import_data_from_csv("~/CloudStation/Projekte/r_projects/bmarketing2.csv")
clean_data(df, target_var = "Y")

df[is.na(df$Y), "Y"] <- 0
df <- clean_data(df, target_var = "Y")

df <- transform_data(df, c("AGE", "DURATION"))

target_var <- "Y"
model_data(df, target_var)



