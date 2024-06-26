INSERT INTO encar.cards_translated (car_id, car_id_from_photo,
                                    last_id, last_parsing_ts,
                                    brand_id, model_id,
                                    fuel_id, transmission_id,
                                    brand, model,
                                    price, mileage,
                                    manufacture_date, model_year,
                                    fuel, body_type, engine_capacity,
                                    transmission, color,
                                    registration_number, view_count,
                                    bookmarks, card_create_date,
                                    photo_list, perfomance_check,
                                    insurance_report, option_list,
                                    packet_list, seller_name,
                                    seller_region, seller_comment,
                                    search_run, parser_run,
                                    mileage_km, engine_capacity_cc,
                                    fuel_russian, fuel_english,
                                    brand_russian, brand_english,
                                    model_russian, model_english,
                                    body_type_russian, body_type_english,
                                    transmission_russian, transmission_english,
                                    color_russian, color_english,
                                    seller_region_russian, seller_region_english,
                                    option_list_russian, option_list_english
                                    )
    SELECT
        temp.car_id, temp.car_id_from_photo,
        temp.last_id, temp.last_parsing_ts,
        temp.brand_id, temp.model_id,
        temp.fuel_id, temp.transmission_id, temp.brand, temp.model,
        temp.price, temp.mileage,
        temp.manufacture_date, temp.model_year,
        temp.fuel, temp.body_type, temp.engine_capacity,
        temp.transmission, temp.color,
        temp.registration_number, temp.view_count,
        temp.bookmarks, temp.card_create_date,
        temp.photo_list, temp.perfomance_check,
        temp.insurance_report, temp.option_list,
        temp.packet_list, temp.seller_name,
        temp.seller_region, temp.seller_comment,
        temp.search_run, temp.parser_run,
        temp.mileage_km, temp.engine_capacity_cc,
        temp.fuel_russian, temp.fuel_english,
        temp.brand_russian, temp.brand_english,
        temp.model_russian, temp.model_english,
        temp.body_type_russian, temp.body_type_english,
        temp.transmission_russian, temp.transmission_english,
        temp.color_russian, temp.color_english,
        temp.seller_region_russian, temp.seller_region_english,
        temp.option_list_russian, temp.option_list_english
    FROM temp_table as temp
    ON CONFLICT (car_id) DO UPDATE
    SET car_id_from_photo = excluded.car_id_from_photo,
        last_id = excluded.last_id, last_parsing_ts = excluded.last_parsing_ts,
        brand_id = excluded.brand_id, model_id = excluded.model_id,
        fuel_id = excluded.fuel_id, transmission_id = excluded.transmission_id, brand = excluded.brand, model = excluded.model,
        price = excluded.price, mileage = excluded.mileage,
        manufacture_date = excluded.manufacture_date, model_year = excluded.model_year,
        fuel = excluded.fuel, body_type = excluded.body_type, engine_capacity = excluded.engine_capacity,
        transmission = excluded.transmission, color = excluded.color,
        registration_number = excluded.registration_number, view_count = excluded.view_count,
        bookmarks = excluded.bookmarks, photo_list = excluded.photo_list,
        perfomance_check = excluded.perfomance_check, insurance_report = excluded.insurance_report,
        option_list = excluded.option_list, packet_list = excluded.packet_list, seller_name = excluded.seller_name,
        seller_region = excluded.seller_region, seller_comment = excluded.seller_comment,
        change_date = excluded.change_date, search_run = excluded.search_run, parser_run = excluded.parser_run,
        mileage_km = excluded.mileage_km, engine_capacity_cc = excluded.engine_capacity_cc,
        fuel_russian = excluded.fuel_russian, fuel_english = excluded.fuel_english, brand_russian = excluded.brand_russian,
        brand_english = excluded.brand_english, model_russian = excluded.model_russian, model_english = excluded.model_english,
        body_type_russian = excluded.body_type_russian, body_type_english = excluded.body_type_english,
        transmission_russian = excluded.transmission_russian, transmission_english = excluded.transmission_english,
        color_russian = excluded.color_russian, color_english = excluded.color_english,
        seller_region_russian = excluded.seller_region_russian, seller_region_english = excluded.seller_region_english,
        option_list_russian = excluded.option_list_russian, option_list_english = excluded.option_list_english
