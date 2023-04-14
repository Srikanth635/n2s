Select tf.*
From tf
INNER JOIN (Select distinct rdft.s, rdft.ID
From rdf_type as rdft Where o = 'urdf:link' AND s REGEXP '^pr2:') as rdft
ON tf.child_frame_id = REPLACE(rdft.s, 'pr2:','')
LIMIT 300000;