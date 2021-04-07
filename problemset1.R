rm(list=ls())

library (tidyverse)
library (dslabs)
library(rmarkdown)

view(polls_us_election_2016)

# Graph 1
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = samplesize,
                           color = rawpoll_johnson))

# Graph 2
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = samplesize,
                           color = as.character(rawpoll_johnson)))

ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton,
                           color = samplesize >= 500))

ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton),
                           colour= "blue")


#2.3
ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton)) +
  facet_grid(cols = vars(population))

ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton)) +
  facet_grid(cols = vars(grade))


ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton)) +
  facet_grid(rows = vars(grade), cols = vars(population))



ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_clinton)) +
  facet_wrap(~rawpoll_clinton+align,ncol=4)






DF <- data.frame(WindDir=sample(0:180, 20, replace=T), 
                 WindSpeed=sample(1:40, 20, replace=T), 
                 Force=sample(1:40, 20, replace=T))


qplot(WindSpeed, Force,
      data = transform(DF,
                       fct = cut(WindDir, seq(0,180,3))),
      facets=~fct)



ggplot(data = polls_us_election_2016) +
  geom_point(mapping = aes(x = startdate,
                           y = rawpoll_trump,
                           color = grade))+
  facet_grid(rows=vars(population))



ggplot(data = polls_us_election_2016,
       mapping = aes(x = startdate,
                     y = rawpoll_trump)) +
  geom_point() +
  geom_smooth(se=TRUE)


ggplot() +
  geom_point(data = polls_us_election_2016,
             mapping = aes(x = startdate,
                           y = rawpoll_trump)) +
  geom_smooth(data = polls_us_election_2016,
              mapping = aes(x = startdate,
                            y = rawpoll_trump), se=FALSE)


