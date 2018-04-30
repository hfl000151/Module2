####R for Data science book. 

install.packages("tidyverse")
library(tidyverse)

mpg
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = cyl, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = drv))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

###making a point that this is a bad idea. It will use a warning
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#####Second set of exercises. 
lapply(mpg, class)

##yells. 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ, size = hwy,
                           shape = cyl))


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ, size = hwy,
                           shape = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class, size = hwy,
                           shape = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class, size = hwy,
                           shape = class))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5), stroke = 2)


######Facet wrapping
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), stroke = 3) + facet_wrap (~ class, nrow = 2)


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid (drv ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid (. ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid (. ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid (cyl ~ .)





