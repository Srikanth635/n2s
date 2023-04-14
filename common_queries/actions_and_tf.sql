SELECT hib.o as start, hie.o as end, th.stamp, task_type.o as task, rdft.o as participant,
       tf.child_frame_id, parameter_type.o as parameter, tt.x as tx,tt.y as ty,tt.z as tz,
       tr.x as rx,tr.y as ry,tr.z as rz,tr.w as rw, tf.neem_id as neem
From tf_header_soma_hasIntervalBegin as tf_tr
INNER JOIN soma_hasIntervalBegin as hib
ON hib.ID = tf_tr.soma_hasIntervalBegin_ID
INNER JOIN soma_hasIntervalEnd hie
ON hie.ID = tf_tr.soma_hasIntervalEnd_ID
INNER JOIN (SELECT et.dul_Task_o, hti.dul_TimeInterval_o, et.dul_Action_s
            From dul_executesTask as et
                INNER JOIN dul_hasTimeInterval as hti
                    ON hti.dul_Event_s = et.dul_Action_s
            Where dul_Task_o not REGEXP '^soma:Phy'
            ) as et_ti
ON  et_ti.dul_TimeInterval_o = hib.dul_TimeInterval_s
Inner JOIN (Select hpara.dul_Concept_s, dc.dul_Entity_o, hpara.dul_Parameter_o
            From dul_hasParameter as hpara
                INNER JOIN dul_classifies as dc
                    ON dc.dul_Concept_s = hpara.dul_Parameter_o
            ) as hpara
ON hpara.dul_Concept_s = et_ti.dul_Task_o
Inner Join tf_header th on tf_tr.tf_header_ID = th.ID
INNER JOIN tf
ON tf.ID = tf_tr.tf_header_ID
INNER JOIN tf_transform as tft
ON tft.ID = tf_tr.ID
INNER JOIN transform_translation as tt
ON tt.ID = tft.ID
INNER JOIN transform_rotation as tr
ON tr.ID = tft.ID
INNER JOIN dul_hasParticipant as hp
ON hp.dul_Event_s = et_ti.dul_Action_s
INNER JOIN rdf_type as rdft
ON hp.dul_Object_o = rdft.s and rdft.o != 'owl:NamedIndividual'
INNER JOIN rdf_type as  task_type
ON et_ti.dul_Task_o = task_type.s and task_type.o != 'owl:NamedIndividual' and task_type.o not Regexp '^soma:Phy'
INNER JOIN rdf_type as  parameter_type
ON hpara.dul_Entity_o = parameter_type.s and parameter_type.o != 'owl:NamedIndividual'
LIMIT 3000000;