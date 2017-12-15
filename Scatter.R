#extracting the data----
query<-"SELECT W,yearID FROM Teams
WHERE TeamID='PHI'"
result<-sqldf(query)

#visualizing the data----
ggplot()+
  geom_line(data=result,aes(x=yearID,y=W))+
  xlab('yearID')+
  ylab('W')

