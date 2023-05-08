select n_name, avg(c_acctbal) as avg_balance
from {{ source('tpch', 'nation') }} nation
join {{ source('tpch', 'customer') }} customer
on nation.n_nationkey = customer.c_nationkey
group by nation.n_name