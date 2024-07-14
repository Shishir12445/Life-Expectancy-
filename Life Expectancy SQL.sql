CREATE DATABASE Life_Expectancy;
USE Life_Expectancy;


-- 1.Impact of GDP and Income Composition:
SELECT
    Country,Year, Status,
  
    Round(AVG(`Life expectancy`)) AS AvgLifeExpectancy,
    ROUND(AVG(GDP)) AS AvgGDP,
    ROUND(AVG(`Income composition of resources`)) AS AvgIncomeComposition
FROM
    life_expectancy
GROUP BY
    Country, Year, Status;

-- 2.Impact of Infant and Adult Mortality Rates::
SELECT
    Country,
    Year,
    Status,

    ROUND(AVG(`Life expectancy`)) AS AvgLifeExpectancy,
    ROUND(AVG(`Adult Mortality`)) AS AvgAdultMortality,
    (AVG(`infant deaths`))AS AvgInfantDeaths,
    (AVG(`under-five deaths`)) AS AvgUnderFiveDeaths
FROM
    life_expectancy
GROUP BY
    Country, Year, Status;

-- 3. Correlation with Lifestyle Factors ( Alcohol):
SELECT Country, Year, Status,  ROUND(AVG(`Life expectancy`)) AS Average_Life_Expectancy, ROUND(AVG(Alcohol)) AS Average_Alcohol_rate, ROUND(AVG(BMI)) AS AvgBMI

FROM life_expectancy
GROUP BY Country, Year, Status;

-- 4.Impact of Schooling on Lifespan:
SELECT Country, Year, Status,  ROUND(AVG(`Life expectancy`)) AS Average_Life_Expectancy, ROUND(AVG(Schooling)) AS Average_Schooling_Years
FROM life_expectancy
GROUP BY Country, Year, Status;

-- 5. Effect of Population:
SELECT Country, Status,  ROUND(AVG(`Life expectancy`)) AS Average_Life_Expectancy, ROUND(AVG(Population)) AS Average_Population
FROM life_expectancy
GROUP BY Country, Year, Status;


-- 6.Temporal Analysis of Immunization Coverage:
SELECT
    Country, Year, Status, 
    ROUND(AVG(`Life expectancy`)) AS AvgLifeExpectancy,
    ROUND(AVG(`Hepatitis B`)) AS AvgHepatitisB,
    ROUND(AVG(Measles)) AS AvgMeasles,
    ROUND(AVG(Polio)) AS AvgPolio,
    ROUND(AVG(Diphtheria)) AS AvgDiphtheria
FROM
    life_expectancy
GROUP BY
    Country, Year, Status;
    
    
    
-- 7.Correlation between Life Expectancy and HIV/AIDS:
SELECT
    Country,
    Year,
    Status,
     ROUND(AVG(`Life expectancy`)) AS AvgLifeExpectancy,
     (AVG(`HIV/AIDS`)) AS AvgHIV_AIDS
FROM
   life_expectancy
GROUP BY
    Country, Year, Status;