Select rdft1.s, rdft.s
From dul_hasParameter as hpara
Inner Join rdf_type as rdft
ON rdft.s = hpara.dul_Parameter_o
Inner Join rdf_type as rdft1
ON rdft1.s = hpara.dul_Concept_s;