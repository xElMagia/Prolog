
es_enemigo_de(coreaSur,estadosUnidos).
vendio_misiles_a(coronelWest,coreaSur).
es_estadounidence(coronelWest).

es_criminal(Coronel,Pais):-es_estadounidence(Coronel),vendio_misiles_a(Coronel,Pais),es_enemigo_de(Pais,estadosUnidos).

