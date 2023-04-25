select *

from {{ source("PUBLIC", "Emp") }}

left join {{ source("PUBLIC", "Dept") }} using (no)
