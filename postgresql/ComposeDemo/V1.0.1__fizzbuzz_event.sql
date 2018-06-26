CREATE TABLE fizzbuzz_event (
  id serial not null,
  lower_bound integer,
  upper_bound integer,
  fizz_at integer,
  buzz_at integer,  
  insert_date timestamp,
  CONSTRAINT fizzbuzz_event_pkey PRIMARY KEY (id));