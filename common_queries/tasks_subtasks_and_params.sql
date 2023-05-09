SELECT taskt.o as task, subtaskt.o as subtask, parameter_type.o as task_param, parameter_type2.o as subtask_param From dul_hasConstituent as hc
INNER JOIN dul_executesTask as task
on hc.dul_Entity_s = task.dul_Action_s
INNER JOIN dul_executesTask as subtask
on hc.dul_Entity_o = subtask.dul_Action_s
INNER JOIN rdf_type as taskt
On task.dul_Task_o = taskt.s and taskt.o != 'owl:NamedIndividual'
INNER JOIN rdf_type as subtaskt
ON subtask.dul_Task_o = subtaskt.s and subtaskt.o != 'owl:NamedIndividual'
Left JOIN (Select hpara.dul_Concept_s, dc.dul_Entity_o, hpara.dul_Parameter_o
        From dul_hasParameter as hpara
            INNER JOIN dul_classifies as dc
                ON dc.dul_Concept_s = hpara.dul_Parameter_o
        ) as hpara
ON hpara.dul_Concept_s = task.dul_Task_o
Left JOIN (Select hpara.dul_Concept_s, dc.dul_Entity_o, hpara.dul_Parameter_o
        From dul_hasParameter as hpara
            INNER JOIN dul_classifies as dc
                ON dc.dul_Concept_s = hpara.dul_Parameter_o
        ) as hpara2
On hpara2.dul_Concept_s = subtask.dul_Task_o
Left JOIN rdf_type as  parameter_type
ON hpara.dul_Entity_o = parameter_type.s and parameter_type.o != 'owl:NamedIndividual'
Left JOIN rdf_type as  parameter_type2
ON hpara2.dul_Entity_o = parameter_type2.s and parameter_type2.o != 'owl:NamedIndividual';