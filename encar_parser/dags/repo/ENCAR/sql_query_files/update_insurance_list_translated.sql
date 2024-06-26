INSERT INTO encar.insurance_list_translated (car_id, last_id, last_parsing_ts,
                                          actual_date, car_specification,
                                          usage_history, owner_changes,
                                          total_loss, damage_my_car,
                                          damage_another_car, car_specification_table,
                                          usage_history_table, owner_changes_table,
                                          total_loss_table, damage_my_car_tables,
                                          damage_another_car_tables,  damage_my_car_cnt,
                                          damage_my_car_cost, damage_another_car_cost,
                                          damage_another_car_cnt, total_loss_common,
                                          total_loss_threft, total_loss_flood, owner_changes_lp, owner_changes_o,
                                          search_run, parser_run, car_specification_table_russian,
                                          car_specification_table_english, usage_history_table_russian,
                                          usage_history_table_english, owner_changes_table_russian, owner_changes_table_english,
                                          total_loss_table_russian, total_loss_table_english, car_specification_russian,
                                          car_specification_english, usage_history_russian, usage_history_english)
    SELECT
        temp.car_id, temp.last_id, temp.last_parsing_ts,
        temp.actual_date, temp.car_specification,
        temp.usage_history, temp.owner_changes, temp.total_loss,
        temp.damage_my_car, temp.damage_another_car, temp.car_specification_table,
        temp.usage_history_table, temp.owner_changes_table,
        temp.total_loss_table, temp.damage_my_car_tables, temp.damage_another_car_tables,
        temp.damage_my_car_cnt, temp.damage_my_car_cost, temp.damage_another_car_cost,
        temp.damage_another_car_cnt, temp.total_loss_common, temp.total_loss_threft, temp.total_loss_flood,
        temp.owner_changes_lp, temp.owner_changes_o, temp.search_run, temp.parser_run,
        temp.car_specification_table_russian, temp.car_specification_table_english,  temp.usage_history_table_russian,
        temp.usage_history_table_english,  temp.owner_changes_table_russian,  temp.owner_changes_table_english,
        temp.total_loss_table_russian,  temp.total_loss_table_english, temp.car_specification_russian,
        temp.car_specification_english,  temp.usage_history_russian,  temp.usage_history_english
    FROM temp_table as temp
    ON CONFLICT (car_id) DO UPDATE
    SET last_id = excluded.last_id, last_parsing_ts = excluded.last_parsing_ts,
        actual_date = excluded.actual_date, car_specification = excluded.car_specification,
        usage_history = excluded.usage_history, owner_changes = excluded.owner_changes,
        total_loss = excluded.total_loss, damage_my_car = excluded.damage_my_car,
        damage_another_car = excluded.damage_another_car, car_specification_table = excluded.car_specification_table,
        usage_history_table = excluded.usage_history_table, owner_changes_table = excluded.owner_changes_table,
        total_loss_table = excluded.total_loss_table, damage_my_car_tables = excluded.damage_my_car_tables,
        damage_another_car_tables = excluded.damage_another_car_tables,
        damage_my_car_cnt = excluded.damage_my_car_cnt, damage_my_car_cost = excluded.damage_my_car_cost,
        damage_another_car_cost = excluded.damage_another_car_cost,
        damage_another_car_cnt = excluded.damage_another_car_cnt,
        total_loss_common = excluded.total_loss_common, total_loss_threft = excluded.total_loss_threft,
        total_loss_flood = excluded.total_loss_flood,
        owner_changes_lp = excluded.owner_changes_lp, owner_changes_o = excluded.owner_changes_o,
        change_date = excluded.change_date, search_run = excluded.search_run, parser_run = excluded.parser_run,
        car_specification_table_russian = excluded.car_specification_table_russian,
        car_specification_table_english = excluded.car_specification_table_english,
        usage_history_table_russian = excluded.usage_history_table_russian,
        usage_history_table_english = excluded.usage_history_table_english,
        owner_changes_table_russian = excluded.owner_changes_table_russian,
        owner_changes_table_english = excluded.owner_changes_table_english,
        total_loss_table_russian = excluded.total_loss_table_russian,
        total_loss_table_english = excluded.total_loss_table_english,
        car_specification_russian = excluded.car_specification_russian,
        car_specification_english = excluded.car_specification_english,
        usage_history_russian = excluded.usage_history_russian,
        usage_history_english = excluded.usage_history_english