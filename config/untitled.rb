rails g model checkpoint building:references route:references

rails g model user wechat_name open_id avatar level description favoritor_score favoritor_total favoritable_score favoritable_total

rails g model route approximate_duration:float approximate_distance:float user:references start_long:float start_lat:float end_long:float end_lat:flat radius_search:float main_picture district favoritable_score favoritable_total name metro_station_stop metro_station_start description

rails g model building name date_created:date architects neighborhood metro_stop main_picture photo_slider address latitude:float longitude:float architectural_style contributor_author description fun_facts main_picture_photo_credit user:references city fact_checked:boolean district favoritable_total favoritable_score description
