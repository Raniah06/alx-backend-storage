--List Glam rock by longevity
SELECT band_name, (2022 - formed) - IF NULL((2022 - spilt), 0) AS lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'
ORDER BY lifespan DESC;
