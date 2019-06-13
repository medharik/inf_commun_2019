
create table  Produit(
    Code_P numbereger primary key ,
    Libelle_P varchar2(255),
    Qte_stock number  ,
    Qte_Min number default 4, 
constranumber check (Qte_stock>=Qte_Min)
)

create table Epandage(
    Code_T number  ,
    Code_P number  ,
    Date_Epandage date ,
    constranumber primary key(Code_T,Code_P) ,
     constranumber foreign key references technicien (Code_T),
     constranumber foreign key references Produit (Code_P)

)

create table technicien(
    Code_T number primary key,
    Nom_T varchar2(255), 
    Region_Epandage varchar2(255),
    Qualif_T char(1) ,
    constranumber check Qualif_T in ('A','B','C')
)

