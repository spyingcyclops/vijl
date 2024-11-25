select clients.id   as client_id,
       clients.age,
       clients.job,
       clients.marital,
       clients.education,
       accounts.id  as account_id,
       accounts.in_default,
       accounts.balance,
       accounts.housing,
       accounts.loan,
       accounts.contact,
       campaigns.id as campaign_id,
       campaigns.day,
       campaigns.month,
       campaigns.duration,
       campaigns.campaign,
       campaigns.pdays,
       campaigns.previous,
       outcomes.id  as outcome_id,
       outcomes.poutcome,
       outcomes.y
from clients
         inner join accounts on clients.id = accounts.client_id
         inner join campaigns on accounts.id = campaigns.account_id
         inner join outcomes on campaigns.id = outcomes.campaign_id