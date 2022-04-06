library(tidyverse) 
library(modelr) 
df <- tribble( ~ sex, ~ response, "male", 1, "female", 2, "male", 1 ) 
model_matrix(df, response ~ sex)
ggplot(sim2) + geom_point(aes(x, y))
mod2 <- lm(y ~ x, data = sim2)
grid <- sim2 %>% data_grid(x) %>% add_predictions(mod2) 
grid
ggplot(sim2, aes(x)) + geom_point(aes(y = y)) + geom_point( data = grid, aes(y = pred), color = "red", size = 4 )
