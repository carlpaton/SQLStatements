Batching data chances is encouraged when doing large `UPDATE` and `DELETE` statements which affect many rows.

### Overview

The idea is that you

1. Create `#full_list` and copy the primary ID into this table from `prod_table`
2. Define the `batch_size`, example 1000 and other variables such as the `number_of_batches`
3. Loop `WHILE @rows_exist = 1`
4. Insert into `#temp_batch` by selecting `TOP(@batch_size)`
5. Perform the `UPDATE` or `DELETE` 
   1. on `prod_table` by joining to `#temp_batch`
   2. DELETE FROM `#temp_full_list`
6. Set `@rows_exist ` as infinite loops are frowned upon. Apparently.

### Roll Backs

A simple way to roll the data back is to create a new `dbo.temp_random_data` and insert the at very least the `id` so you can join back to it. This is really for an `UPDATE` as `DELETE` should trigger auditing. You do audit deletes in your database right? :)