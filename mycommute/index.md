---
title       : Commute Analysis
subtitle    : Trying to minimizing time on the road
author      : Roberto Congiu rcongiu@yahoo.com
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---




## Commute from Pasadena to Santa Monica

* about 25 miles
* goes through two of the most congested Los Angeles Freeways, the 110 and the 10
* takes 30 minutes without traffic
* can take up to 2 hours on the bad day/time
* significally different depending on the day of the week
* we want to analyze both going to work, and going back home, and find optimal working hours
* use Bing API to sample traffic estimates every 5 minutes, for 3 weeks.


--- .class #id 

## Traffic by day of week

* we can see there's lots of variance on weekdays

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png) 

---

## Let's see how it changes on a weekday


![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png) 

---

## how about the weekend ?

![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4-1.png) 

What about dynamically estimating my commute based on 
the day of the week and the direction ?


---
## You can do that on my shiny app!

https://rcongiu.shinyapps.io/commute/




