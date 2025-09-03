es_padre_de(abraham,homero).
es_padre_de(abraham,herbert).
es_padre_de(clancy,patty).
es_padre_de(clancy,selma).
es_padre_de(clancy,marge).
es_padre_de(homero,bart).
es_padre_de(homero,maggie).
es_padre_de(homero,lisa).
               
es_madre_de(mona,herbert).
es_madre_de(mona,homero).
es_madre_de(jacqueline,selma).
es_madre_de(jacqueline,patty).
es_madre_de(jacqueline,marge).
es_madre_de(marge,lisa).
es_madre_de(marge,bart).
es_madre_de(marge,maggie).
es_madre_de(selma,ling).

es_hermana_de(patty,selma).
es_hermana_de(patty,marge).
es_hermana_de(marge,patty).
es_hermana_de(marge,selma).
es_hermana_de(selma,patty).
es_hermana_de(selma,marge).
es_hermana_de(maggie,bart).
es_hermana_de(maggie,lisa).
es_hermana_de(lisa,bart).
es_hermana_de(lisa,maggie).

es_hermano_de(herbert,homero).
es_hermano_de(homero,herbert).
es_hermano_de(bart,lisa).
es_hermano_de(bart,maggie).

es_esposa_de(marge,homero).
es_esposo_de(homero,marge).

es_abuelo(Abuelo,Nieto):-es_padre_de(Abuelo,Hijo),es_padre_de(Hijo,Nieto).
es_abuela(Abuela,Nieto):-es_madre_de(Abuela,Hijo),es_padre_de(Hijo,Nieto).

es_tia(Tia,Sobrino):-es_hermana_de(Tia,Madre),es_madre_de(Madre,Sobrino).
es_tio(Tio,Sobrino):-es_hermano_de(Tio,Padre),es_padre_de(Padre,Sobrino).

es_prima(Hijo,Prima):-es_madre_de(Tia,Prima),es_madre_de(Madre,Hijo),es_hermana_de(Tia,Madre).

es_suegro(Esposo,Suegro):-es_padre_de(Suegro,Hija),es_esposa_de(Hija,Esposo);es_padre_de(Suegro,Hijo),es_esposo_de(Hijo,Esposo).
es_suegra(Esposo,Suegra):-es_madre_de(Suegra,Hija),es_esposa_de(Hija,Esposo);es_madre_de(Suegra,Hijo),es_esposo_de(Hijo,Esposo).

es_cunado(Hermano,Esposa):-es_hermano_de(Hermano,Esposo),es_esposo_de(Esposo,Esposa).
es_cunada(Hermana,Esposo):-es_hermana_de(Hermana,Esposa),es_esposa_de(Esposa,Esposo).




































