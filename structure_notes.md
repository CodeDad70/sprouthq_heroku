user 
has_many children
-----------------
children
belongs to user
has many milestones through ages
has many medicine through ages
has many vaccines through ages
has many flu_shots through ages


:name - string
:user_id - integer

-------------------

Joins

- milestones
belongs to children, ages
:desription - string
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

:name - string 
:date - date_given

-----------

-flu_shots
belongs_to children, ages
:true false boolean default false

---------------------------
- ages
has many children => :milestones
has many children => :dosages
has many children => :vaccines

:year  - integer



