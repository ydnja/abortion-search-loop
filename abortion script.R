###---R script to fuck with anti-abortion states---###
###---By AJ---###
###---MAKE SURE YOU HAVE VPN TURNED ON AND EGRESSING YOUR TRAFFIC THROUGH 
###---THE US STATES THAT HAVE BANNED OR ARE EXPECTED TO BAN ABORTION---###

###################
###---WARNING---###
###################
###---DO NOT USE IF YOU RESIDE IN STATES THAT HAVE BANNED OR WILL SOON BAN ABORTION---###
###---RUN THE FOLLOWING---###

###---CHECK AND INSTALL TWO PACKAGES---###
list.of.packages <- c(
  "purrr",
  "rvest",
)
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages) > 0){
  install.packages(new.packages, dep=TRUE)
}
#loading packages
for(package.i in list.of.packages){
  suppressPackageStartupMessages(
    library(
      package.i, 
      character.only = TRUE
    ) 
  ) 
}
###---LIST OUT THE URLS---###
###---SO MANY LIST IS SO THAT WE DON'T NEED AN INEFFICIENT LOOP---###
###---SINCE READ_HTML is slow by default, its not quick even if vectorized---###
urls <- list('https://www.google.com/search?q=where+to+get+abortion+now',
          'https://www.google.com/search?q=how+do+i+get+an+abortion', 
          'https://www.google.com/search?q=where+can+i+get+an+abortion',
          'https://www.google.com/search?q=how+to+get+an+abortion',
          'https://www.google.com/search?q=where+to+get+abortion+now',
          'https://www.google.com/search?q=how+do+i+get+an+abortion', 
          'https://www.google.com/search?q=where+can+i+get+an+abortion',
          'https://www.google.com/search?q=how+to+get+an+abortion',
          'https://www.google.com/search?q=where+to+get+abortion+now',
          'https://www.google.com/search?q=how+do+i+get+an+abortion', 
          'https://www.google.com/search?q=where+can+i+get+an+abortion',
          'https://www.google.com/search?q=how+to+get+an+abortion',
          'https://www.google.com/search?q=where+to+get+abortion+now',
          'https://www.google.com/search?q=how+do+i+get+an+abortion', 
          'https://www.google.com/search?q=where+can+i+get+an+abortion'
          )
###---RUN THIS ITERATION AFTER RUNNING THE PREVIOUS---###
urls %>% 
  lapply(read_html)
