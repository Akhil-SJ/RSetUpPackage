
# fucntion e/ multple arguments
#defauts if missing values
#optional arguments


#option to run function if comannded to

## return results and df, variable list



prac <- function(x,y = "defauly response"

) {
  ### check packages and call then. if do not exis they will download and from there it calls. if not found it lets you know

  pkgTest <- function(x)
  {
    if (!require(x,character.only = TRUE))
    {
      install.packages(x,dep=TRUE)
      if(!require(x,character.only = TRUE)) stop("Package not found")
    }
  }



  pkgTest('sjPlot')

  pkgTest('sjmisc')

  pkgTest('sjlabelled')



  raw_file = x


  ### if soemthing exists function
  check=function(x) tryCatch(if(class(x) == 'logical') 1 else 1, error=function(e) 0)





  if((  check(y) == 1)


  ) {
    ext_in = y
  } else {
    ext_in = 2000
  }










  ### clean data


  df = x[which(x[5]== 'setosa'),]
  df = x[which(x[3] >= 1), ]


  clean_data = df


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





  if( nchar(y) != 3


  ) {
    print(ext_in)
  } else {
    print('no')
  }






}
