SELECT 
sum(new_confirmed) as Novos_Casos,
sum(new_deceased) as Mortos,
subregion1_name as Regiao
 FROM 
`bigquery-public-data.covid19_open_data.covid19_open_data`
where aggregation_level = 1
and country_code = 'BR' 
group by subregion1_name
order by Novos_Casos desc
