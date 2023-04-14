SELECT * From neems
INNER JOIN (Select * From neems_environment_index as neem_env Where environment_values="kitchen") as neem_env
ON neems.ID = neem_env.neems_ID;