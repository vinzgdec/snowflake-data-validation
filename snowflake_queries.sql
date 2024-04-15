--Lazada NutriAsia
SELECT 
    sc_id, 
    plfm_ord_id, 
    plfm_item_id, 
    ord_stat_end, 
    ord_stat_plfm, 
    DATE(parse_json(raw_json):record_content:order:data:created_at) AS order_date,
    DATEADD(Day, -7, '2024-04-13') AS end_date,
    DATEADD(Day ,-21, end_date) AS start_date
FROM prod_db.prod_integ_lzd_sch.lzd_sls_item_ft
WHERE order_date BETWEEN start_date AND end_date 
    AND sc_id = 'PH7S2X8ZW4';
    

--Lazada Nestle
SELECT 
    sc_id, 
    plfm_ord_id,
    plfm_item_id, 
    ord_stat_end, 
    ord_stat_plfm, 
    DATE(parse_json(raw_json):record_content:order:data:created_at) AS order_date,
    DATEADD(Day, -7, '2024-04-13') AS end_date,
    DATEADD(Day ,-21, end_date) AS start_date
FROM prod_db.prod_integ_lzd_sch.lzd_sls_item_ft
WHERE order_date BETWEEN start_date AND end_date 
    AND sc_id = 'PH1XP97M';


--Lazada Bayer
SELECT 
    sc_id, 
    plfm_ord_id, 
    plfm_item_id, 
    ord_stat_end, 
    ord_stat_plfm, 
    DATE(parse_json(raw_json):record_content:order:data:created_at) AS order_date,
    DATEADD(Day ,-7, '2024-04-13') AS end_date,
    DATEADD(Day ,-20, end_date) AS start_date
FROM prod_db.prod_integ_lzd_sch.lzd_sls_item_ft
WHERE order_date BETWEEN start_date AND end_date
    AND sc_id = 'PHJ2GADL';
