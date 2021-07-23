prac <- function(df) {


  install.packages(c('sjPlot','sjmisc','sjlabelled'))

  library(sjPlot)
  library(sjmisc)
  library(sjlabelled)

  #df = rbind(x,y)



  #ggplot(df, aes(a)) + geom_histogram() + xlab(b)
  df1 = as.table(unlist(df))
  summary.table(df1)



  a = df[1]
  b = df[2]

  c = 'Surface Area'
  d = 'SQ units'

  Area = as.numeric(unlist( a*b))

  hist(Area , main= c , xlab = d )

  print('So far so good')


  Model = unlist(df[1])
  Variable1 = unlist(df[2])
  Variable2 = unlist(df[3])
  Variable3 = unlist(df[4])
  regmodel = lm(Model ~ Variable1 + Variable2 + Variable3)



  summary(regmodel)

  tab_model(regmodel)

}
