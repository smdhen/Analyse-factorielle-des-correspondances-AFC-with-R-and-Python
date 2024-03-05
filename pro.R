
#se mettre sur l'envi de travaile 


setwd("C:/Users/HENNANI/Desktop/Nouveau dossier (6)")

# importer les donnees 
PIBAR<-read.csv("data_.csv",header =TRUE,row.names = 1,sep=";",dec = ",",check.names = FALSE,fileEncoding = "latin1")




# Chargez-les packages  dans R,


library("gplots")
library("corrplot")
library("FactoMineR")
library("factoextra")



#convertir les donnee en table  

dt <- as.table(as.matrix(PIBAR))

#visualiser data 
balloonplot(t(dt),sorted=TRUE, main ="produit interieure brut par secteures d'activiter et par region", xlab ="", ylab="",label =FALSE, show.margins = FALSE,scale.range=c("absolute","relative"), cum.margins=TRUE,dotsize=6/max(strwidth(19),strheight(19)))

# diagramme a bulle
col<- colorRampPalette(c("blue", "yellow", "red"))(20)
corrplot(dt1, is.corr = FALSE, method = "circle",bg = "white",col = col)

#description les donnees
summary(PIBAR)


#  test de chi2 // indepandance des variable 
chisq.test(PIBAR)



#Pour calculer l'AFC
re<-CA(PIBAR, ncp = 5, graph = FALSE)



# valeurs propres 
get_eigenvalue(re)


#------------------------------------------les valeurs propres



#Histogramme des valeurs propres 

fviz_screeplot(re, addlabels = TRUE)

#-----------pour calculer la valeur propre  moynne
k=1 / (nrow (PIBAR) -1)


k1=1 / (ncol (PIBAR) -1)

mx=max(k*100,k1*100)
mx
#________________________
# les dimension 


fviz_screeplot (re) + geom_hline (yintercept=9,09 ,linetype = 2, color = "red")




#Qualité de représentation des lignes 



fviz_ca_row(re, repel = TRUE)


fviz_ca_row(re, col.row = "cos2",
            gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
            repel = TRUE)



fviz_cos2(re, choice = "row", axes = 1)




#Qualité de représentation des col 


fviz_ca_col(re, repel = TRUE)

fviz_ca_col(re, col.col = "cos2",
            gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
            repel = TRUE)




fviz_cos2(re, choice = "col", axes = 1)





# la contribution des ligne 
fviz_contrib(re, choice = "row", axes = 1, top = 10)


# la contribution des col

fviz_contrib(re, choice = "col", axes = 1, top = 10)





#x<-CA(PIBAR)
#summary(x)




#Biplot symétrique
fviz_ca_biplot(re, repel = TRUE)











