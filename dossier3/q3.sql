Produit(Code_P, Libelle_P, Qte_stock, Qte_Min)
Epandage(Code_T#, Code_P#, Date_Epandage)
Technicien(Code_T, Nom_T, Region_Epandage, Qualif_T)




select distinct  code_p  from Epandage  
group by code_p
having count(*) =(select count(*) from Technicien)
