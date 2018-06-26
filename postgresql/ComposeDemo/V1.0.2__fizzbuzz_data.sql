CREATE TABLE fizzbuzz_data (
  id serial NOT NULL,
  fizzbuzz_event_id integer REFERENCES fizzbuzz_event(id),
  val TEXT,
  CONSTRAINT fizzbuzz_data_pkey PRIMARY KEY (id));
