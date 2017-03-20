domains
%nm = nama, p = post
nm,=symbol

predicates
nondeterm post(p,nm,nm,nm,nm,nm,nm)
nondeterm post(p,nm,nm,nm)
nondeterm nm_pagi(nm,nm,nm,nm)
nondeterm nm_sore(nm,nm,nm,nm)
nondeterm nm_malam(nm,nm,nm,nm)

clauses
post(central_hall,dombra,smith,slondre,dwayne,john,mark).
post(cctv_room,gabriel,ben).
post(gate_stand,marcos,lenty,nando).
nm_pagi(jack,wade,james).
nm_sore(gorge,irving,paul).
nm_malam(robinson,rose,durent,westbrook).

goal
write("security yang mengambil post di central hall :"),n1,post(central_hall,NM1,NM2,NM3,NM4,NM5,NM6);
n1,write("security yang mengambil post di cctv room :"),n1,post(cctv_room,NM1,NM2,NM3);
n1,write("security yang mengambil post di gate stand :"),n1,post(gate_stand,NM1,NM2,NM3);
n1,write("security yang hadir pagi :"),n1,nm_pagi(NM1,NM2,NM3,NM4);
n1,write("security yang hadir sore :"),n1,nm_sore(NM1,NM2,NM3,NM4);
n1,write("security yang hadir malam :"),n1,nm_malam(NM1,NM2,NM3,NM4);
n1,write("seluruh security :"),n1,post(,NM1,NM2,NM3);post(,NM1,NM2,NM3,NM4,NM5,NM6).