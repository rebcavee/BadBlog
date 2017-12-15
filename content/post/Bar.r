#extracting the data----
query<-"SELECT nameLast,sum(W) AS career_W
FROM Master INNER JOIN Pitching
ON Master.playerID=Pitching.playerID
GROUP BY Master.playerID
HAVING sum(W)>370"

result<-sqldf(query)

result$nameLast<-factor(result$nameLast,levels=result$nameLast)

#visualizing the data----
ggplot()+
  geom_bar(data=result,aes(x=nameLast,y=career_W) stat='identity')