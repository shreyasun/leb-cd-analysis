# Data Analysis Project - Exploring Global Trends in Life Expectancy and Mortality Rates from Non-Communicable Diseases

#### Objective
To analyze and understand the patterns, trends, and relationships between the life expectancy and mortality rates from non-communicable diseases of all countries and regions worldwide across several years. This project aims to highlight global health disparities through understanding the potential associations with a country's rate of mortality from non-communicable diseases and its average life expectancy.

### Background
Life expectancy (commonly measured as *life expectancy at birth*) is a statistical measure of the average lifespan for a specific region for some time. Global life expectancy, which collectively considers individuals from all genders, classes, and locations, has increased throughout human history. This is due to a variety of reasons, including but not limited to advances in public health, reduced rates of infant and child mortality, and higher standards of life. However, major discrepancies and inequalities in the average lifespan are evident when comparing factors such as an individual's access to medical care, economic circumstances, diet, poverty, gender, genetics, and more. 

A non-communicable disease (aka *NCD*) is a disease that is not directly transmissible from one person to another, so is not usually infectious. NCDs are the leading cause of death globally; some NCD examples include Parkinson's disease, Alzheimer's disease, autoimmune diseases, strokes, heart diseases, cancers, diabetes, and more. While many NCDs are considered preventable, there are certainly risk factors that increase the chance and prevalence of these diseases, including blood pressure, cholesterol, tobacco use, alcohol consumption, weight, and genetics. Social determinants of health could also be risk factors for NCDs.

So now we have a measure of lifespan and the leading cause of death. What are some observations we can make about these, and what patterns and trends amongst lifespan and non-communicable death mortality rates can we observe?

### Available Data

### Data Exploration

Based on insights from SQL queries.

#### Life Expectancy Dataset
- **Country with the lowest average life expectancy for each year.**

  2000: Malawi (44.518 years)
  
  2010: Lesotho (45.596 years)
  
  2015: Lesotho (51.101 years)
  
  2019: Nigeria (52.91 years)

  **Insights:** For at least the past 20 years, the countries with the lowest expectancy at birth have all been situated in Africa, where individuals in these countries are expected to live 40-50 years, well below the global LEB averages of those years. In fact, the bottom 10 countries in terms of life expectancy are all situated in Africa in 2010 and 2019.

- **Percent Change in lowest life expectancy from 2000 - 2019**

  44.518 years -> 52.91 years: 18.85%

- **Country with the highest average life expectancy for each year.**

  2000: Highest overall: Gibraltar (81.37 years), Country with the highest leb: Japan (81.076 years).
  
  2010: Highest overall: Gibraltar (81.37 years), Country with the highest leb: Japan (81.076 years).
  
  2015: Highest overall: Hong Kong SAR (84.278 years), Country with the highest leb: Japan (83.79 years).
  
  2019: Highest overall: Hong Kong SAR (85.18 years), Country with the highest leb: Japan (84.356 years).

  **Insights:** For at least the past 20 years, Japan has continuously been the country with the highest life expectancy at birth, where individuals are on average expected to live more than 80 years. 
  
- **Percent Change in highest life expectancy from 2000 - 2019.**

  81.37 years -> 85.18 years: 4.68%

- **Average life expectancy globally for each year.**

  2000: 66.75 years

  2010: 70.02 years

  2015: 71.5 years

  2019: 72.48 years

- **Percent Change in average life expectancy from 2000 - 2019.**

  66.75 years -> 72.48 years: 8.59%

- **Country has the largest change in life expectancy from 2000 to 2019?**

  Malawi has the largest change in life expectancy from 2000 to 2019, starting from 41.52 years in 2000 to 64.12 years in 2019. This is a 44.03% increase in life expectancy over the past 20 years.

  Other notable insights: 2 countries, Venezuela and the Bahamas, experienced declines in their life expectancies. Venezuela's life expectancy in 2000 was 72.48 years as compared to the life expectancy of 72.16 in 2019, a 0.43% decrease. The Bahamas's life expectancy in 2000 was 72.041 years as compared to the life expectancy of 71.205 in 2019, a 1.16% decrease.

- **What is the median life expectancy for each country in 2019, and how does it compare to the mean?**

#### Non-Communicable Diseases Mortality Rate Dataset
- **What country had the lowest mortality rate by NCDs in 2019?**
  
- **What country had the highest mortality rate by NCDs in 2019?**
  
- **How has the mortality rate by NCDs increased or decreased for each country from 2000 to 2019?**
  
- **What country has the largest change (increase or decrease) in mortality rate from NCD's from 2000 to 2019?**
  
- **What is the global change in mortality rate by NCDs from 2000 to 2019?**

- **What is the median change in mortality rate by NCDs for each country in 2019, and how does it compare to the mean?**

#### Joining Both Datasets

### Data Visualization

### Analysis

### Conclusion

### Sources Used
Both datasets are from the World Bank Open Data, a database that provides free open-source datasets related to global development.

Life Expectancy: [Life expectancy at birth, total (years)](https://data.worldbank.org/indicator/SP.DYN.LE00.IN)

Non-Communicable Diseases Mortality Rate Dataset: [Cause of death, by non-communicable diseases (% of total)](https://data.worldbank.org/indicator/SH.DTH.NCOM.ZS)

[About Life Expectancy](https://en.wikipedia.org/wiki/Life_expectancy)

[About NCDs](https://en.wikipedia.org/wiki/Non-communicable_disease)
