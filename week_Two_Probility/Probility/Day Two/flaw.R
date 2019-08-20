
#' ## Case study
#' A grocer sells Huli Huli Chicken.
#' Once a chicken is cooked, local laws forces 
#' the grocer to dispose of chicken the same day if it isn't sold.
#' 
#' The Grocers Business Model is as follows:
#' 
#' GP: Gross Profit
#' SR: Sales Revenue
#' SC: Stock Cost
#' STK: Stock
#' S : Sales(units)
#' P : Unit Price   $9
#' C : Unit Cost    $6
#' day: i
#' 
#' Business Model:
#' GP(i) = SR(i) - SC
#' SR(i) = S(i)*P
#' S(i) = min(demand(i), stock)
#' SC = STK*C
#' 
#' 
#' You set the stock.






EGPL=NULL
for(STK in 15:140){
  demand_Simu=sample(seq(15,140, by=5),size=200000,replace=T,prob= c(.04,.09,.11,.11,.10,.09,.08,.07,
                                                                              .05,.04,.03,.03,.02,.02,
                                                                              .01,.01,.01,.01,.01,.01,
                                                                              .01,.01,.01,.01,.01,.01))
  S=sapply(demand_Simu, function(x)min(x,STK))
  GP=S*9-STK*6
  EGP=mean(GP)
  EGPL=c(EGPL,EGP)
}
STock=15:140
dim(STock)=c(length(STock),1)
dim(EGPL)=c(length(STock),1)
result=cbind(STock,EGPL)
plot(result)

length(demand)
length(demand_p)

sum(demand_p)
percentile <- cumsum(demand_p)
plot(demand,percentile)
points(demand, demand_p)

weighted.mean(demand, demand_p)




