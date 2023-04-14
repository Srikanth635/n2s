Select hib.o, hie.o, th.stamp, tf.neem_id
From tf_header_soma_hasIntervalBegin as tf_tr
INNER JOIN soma_hasIntervalBegin as hib
ON hib.ID = tf_tr.soma_hasIntervalBegin_ID
INNER JOIN soma_hasIntervalEnd hie
ON hie.ID = tf_tr.soma_hasIntervalEnd_ID
Inner Join tf_header th on tf_tr.tf_header_ID = th.ID
INNER JOIN tf
ON tf.ID = tf_tr.tf_header_ID;