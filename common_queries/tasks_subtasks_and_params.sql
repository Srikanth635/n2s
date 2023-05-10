SELECT taskt.o as task, task_ib.o, task_ie.o, subtaskt.o as subtask,
       subtask_ib.o, subtask_ie.o, subtask_hp.dul_Object_o, parameter_type2.o as subtask_param, hc.neem_id
From dul_hasConstituent as hc
INNER JOIN dul_executesTask as task
on hc.dul_Entity_s = task.dul_Action_s and hc.neem_id = task.neem_id
INNER JOIN dul_executesTask as subtask
on hc.dul_Entity_o = subtask.dul_Action_s and hc.neem_id = subtask.neem_id
INNER JOIN rdf_type as taskt
On task.dul_Task_o = taskt.s and taskt.o != 'owl:NamedIndividual' and task.neem_id = taskt.neem_id
INNER JOIN rdf_type as subtaskt
ON subtask.dul_Task_o = subtaskt.s and subtaskt.o != 'owl:NamedIndividual' and subtask.neem_id = subtaskt.neem_id
Left JOIN (Select hpara.dul_Concept_s, dc.dul_Entity_o, hpara.dul_Parameter_o, hpara.neem_id
        From dul_hasParameter as hpara
            INNER JOIN dul_classifies as dc
                ON dc.dul_Concept_s = hpara.dul_Parameter_o and dc.neem_id = hpara.neem_id
        ) as hpara2
On hpara2.dul_Concept_s = subtask.dul_Task_o and hpara2.neem_id = subtask.neem_id
Left JOIN rdf_type as  parameter_type2
ON hpara2.dul_Entity_o = parameter_type2.s and parameter_type2.o != 'owl:NamedIndividual' and hpara2.neem_id = parameter_type2.neem_id
Inner JOIN dul_hasTimeInterval task_ti on task.dul_Action_s = task_ti.dul_Event_s and task.neem_id = task_ti.neem_id
INNER JOIN dul_hasTimeInterval subtask_ti on subtask.dul_Action_s = subtask_ti.dul_Event_s and subtask.neem_id = subtask_ti.neem_id
Inner JOIN soma_hasIntervalBegin task_ib on task_ti.dul_TimeInterval_o = task_ib.dul_TimeInterval_s and task_ti.neem_id = task_ib.neem_id
Inner JOIN soma_hasIntervalBegin subtask_ib on subtask_ti.dul_TimeInterval_o = subtask_ib.dul_TimeInterval_s and subtask_ti.neem_id = subtask_ib.neem_id
Inner JOIN soma_hasIntervalEnd task_ie on task_ti.dul_TimeInterval_o = task_ie.dul_TimeInterval_s and task_ti.neem_id = task_ie.neem_id
Inner JOIN soma_hasIntervalEnd subtask_ie on subtask_ti.dul_TimeInterval_o = subtask_ie.dul_TimeInterval_s and subtask_ti.neem_id = subtask_ie.neem_id
Left JOIN dul_hasParticipant as subtask_hp
ON subtask_hp.dul_Event_s = subtask.dul_Action_s and subtask_hp.neem_id = subtask.neem_id
Order by subtask_ib.o;