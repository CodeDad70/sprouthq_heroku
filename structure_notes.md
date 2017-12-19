user 
has_many children
-----------------
children
belongs to user
has many milestones through ages
has many medicine through ages
has many vaccines through ages

:name - string
:user_id - integer

-------------------

Joins

- milestones
belongs to children, ages
:name - string
:children_id - integer
:ages_id - integer

------------
- medicines 
belongs to children, ages
:name - string
:amount 
:children_id - integer
:ages_id - integer

------------
- vaccines 
belongs to children, ages
:children_id - integer
:ages_id - integer



---------------------------
- ages
has many children => :milestones
has many children => :dosages
has many children => :vaccines

:year  - integer



