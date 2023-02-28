This is the do file of STATA for the study of bullying among the nurses

*data mx

Patients_serve_number 

gen  Patients_serve_number_cat_new =  1 if Patients_serve_number <20
replace Patients_serve_number_cat_new =2 if Patients_serve_number >19 & Patients_serve_number <40
replace Patients_serve_number_cat_new =3 if Patients_serve_number >39

tab1 Patients_serve_number_cat Patients_serve_number_cat_new

** Suicidal ideation, bullying, and burnout
tab Age_cat
tab Gender
tab Marital_status_new
tab Educational_degree
tab Income_cat_new
tab Division_of_work_place

tab Type_of_job_new
tab Level_of_hospital_new
tab Working_hours_cat
tab Patients_serve_number_cat_new
tab Total_experience_cat
tab Sufficient_equipment
tab Get_payment_timely
tab Have_rewards
tab Training_against_wpv
tab Bullying_cat

#Table 2: The distribution of workplace bullying by study varibles 

**Chi-square test with individual and demographic variables
tab Age_cat Bullying_cat , chi row
tab Gender Bullying_cat , chi row
tab Educational_degree Bullying_cat , chi row
tab Marital_status_new Bullying_cat , chi row
tab Income_cat_new Bullying_cat , chi row
tab Division_of_work_place Bullying_cat , chi row
tab Smoking_status Bullying_cat , chi row

tab Type_of_job_new Bullying_cat , chi row
tab Level_of_hospital_new Bullying_cat , chi row
tab Sufficient_equipment Bullying_cat , chi row
tab Working_hours_cat Bullying_cat , chi row
tab Total_experience_cat Bullying_cat , chi row
tab Patients_serve_number_cat_new Bullying_cat , chi row
tab Have_rewards Bullying_cat , chi row
tab Get_payment_timely Bullying_cat , chi row
tab Training_against_wpv Bullying_cat , chi row


#Table 2: Multinomial logistic model 

mlogit Bullying_cat i.Age_cat  i.Gender i.Marital_status_new i.Educational_degree  i.Income_cat_new i.Division_of_work_place  i.Type_of_job_new i.Level_of_hospital_new i.Working_hours_cat i.Patients_serve_number_cat_new i.Total_experience_cat  i.Sufficient_equipment i.Get_payment_timely i.Have_rewards i.Training_against_wpv, rr
