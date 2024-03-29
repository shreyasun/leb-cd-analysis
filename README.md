# Data Analysis Project - Exploring Global Trends in Life Expectancy and Mortality Rates from Communicable Diseases

### Objective
To analyze and understand the patterns, trends, and relationships between the life expectancy and mortality rates from communicable diseases of all countries and regions worldwide across several years. This project aims to highlight global health disparities through understanding the potential associations with a country's rate of mortality from communicable diseases and its average life expectancy.

### Background
Life expectancy (commonly measured as *life expectancy at birth*, or LEB) is a statistical measure of the average lifespan for a specific region for some time. Global life expectancy, which collectively considers individuals from all genders, classes, and locations, has increased throughout human history. This is due to a variety of reasons, including but not limited to advances in public health, reduced rates of infant and child mortality, and higher standards of life. However, major discrepancies and inequalities in the average lifespan are evident when comparing factors such as an individual's access to medical care, economic circumstances, diet, poverty, gender, genetics, and more. 

A communicable disease (*CD*) is a disease that is spread from person-to-person or animal-to-person, through air, direct contact, food, common surface, etc. These diseases are otherwise known as infectious diseases. These diseases can be caused by a wide range of pathogens, especially bacteria and viruses. Deaths caused by communicable diseases, coupled with deaths resulting from maternal, prenatal and nutrition conditions, include infectious and parasitic diseases, respiratory infections, and nutritional deficiencies such as underweight and stunting.

So now we have a measure of lifespan and the cause of death. What are some observations we can make about these, and what patterns and trends amongst lifespan and communicable death mortality rates can we observe?

### Available Data

The data for LEB's and CD's comes from the World Bank Open Data, a database that provides free open-source datasets related to global development. Specifically, I utilized [Life expectancy at birth, total (years)](https://data.worldbank.org/indicator/SP.DYN.LE00.IN) and [Cause of death, by communicable diseases and maternal, prenatal and nutrition conditions (% of total)](https://data.worldbank.org/indicator/SH.DTH.COMM.ZS) datasets for this project. The columns in both datasets are: `Country Name`, and years from 1960-2019; however, most of the columns did not have data, so I removed those column. The datasets now only include the columns `2000`,	`2010`,	`2015`,	and `2019`.

I cleaned the datasets by removing rows where the `Country Name` was a continent, region of multiple countries, territory, or otherwise not included in the list of 197 [United Nations's member states](https://www.un.org/en/about-us/member-states). In addition, I also removed rows of countries where there were no data for any of the years. 
* [Life expectancy at birth, total (years)](https://data.worldbank.org/indicator/SP.DYN.LE00.IN): Andorra did not have data.
* [Cause of death, by communicable diseases and maternal, prenatal and nutrition conditions (% of total)](https://data.worldbank.org/indicator/SH.DTH.COMM.ZS): Andorra, Dominica, St. Kitts and Nevis, Liechtenstein, Monaco, Marshall Islands, Nauru, Palau, San Marino, Tuvalu, Kosovo did not have data.

### Data Exploration

Based on insights from SQL queries.

#### Life Expectancy Dataset
- **Country with the lowest average life expectancy for each year (2000, 2010, 2015, 2019).**

  2000: Malawi (44.518 years)
  
  2010: Lesotho (45.596 years)
  
  2015: Lesotho (51.101 years)
  
  2019: Nigeria (52.91 years)

  **Insights:** For at least the past 20 years, the countries with the lowest expectancy at birth have all been situated in Africa, where individuals in these countries are expected to live 40-50 years, well below the global LEB averages of those years. In fact, the bottom 10 countries in terms of life expectancy are all situated in Africa in 2010 and 2019.

- **Percent Change in lowest life expectancy from 2000 - 2019.**

  44.518 years -> 52.91 years: 18.85%

- **Country with the highest average life expectancy for each year (2000, 2010, 2015, 2019)**

  2000: Japan (81.076 years)
  
  2010: Japan (82.843 years)
  
  2015: Japan (83.794 years)
  
  2019: Japan (84.356 years)

  **Insights:** For at least the past 20 years, Japan has continuously been the country with the highest life expectancy at birth, where individuals are on average expected to live more than 80 years. 
  
- **Percent Change in highest life expectancy from 2000 - 2019.**

  81.076 years -> 84.356 years: 4.046%

- **Average life expectancy globally for each year (2000, 2010, 2015, 2019).**

  2000: 66.404 years

  2010: 69.739 years

  2015: 71.26 years

  2019: 72.257 years

- **Percent Change in average life expectancy from 2000 - 2019.**

  66.404 years -> 72.257 years: 8.814%

- **Country has the largest change in life expectancy from 2000 to 2019.**

  Malawi has the largest change in life expectancy from 2000 to 2019, starting from 41.52 years in 2000 to 64.12 years in 2019. This is a 44.03% increase in life expectancy over the past 20 years.

  Other notable insights: 2 countries, Venezuela and the Bahamas, experienced declines in their life expectancies. Venezuela's life expectancy in 2000 was 72.478 years as compared to the life expectancy of 72.161 in 2019, a 0.437% decrease. The Bahamas's life expectancy in 2000 was 72.041 years as compared to the life expectancy of 71.205 in 2019, a 1.16% decrease.

- **Countries where life expectancy decreased from 2000 to 2019.**

  Bahamas: 72.041 ->	71.205 (-1.16%)
  
  Venezuela: 72.478 -> 72.161 (-0.437%)

- **Number of countries where life expectancy is above global average in 2019.**

  2000: 114/189
  
  2010: 109/189
  
  2015: 105/189
  
  2019: 102/189

#### Communicable Diseases Mortality Rate Dataset
- **Country with the lowest mortality rate by CD's per year (2000, 2010, 2015, 2019)?**

  2000: Hungary (1.818%)
  
  2010: Hungary (1.50%)
  
  2015: Finland (1.209%)
  
  2019: North Macedonia (1.284%)
  
- **Country with the highest mortality rate by CD's per year (2000, 2010, 2015, 2019)?**

  2000: Zimbabwe (78.637%)
  
  2010: Chad (69.34%)
  
  2015: Nigeria (66.47%)
  
  2019: Nigeria (65.208%)
  
- **Which country experienced the highest decrease in mortality rate by CDs between 2000 to 2019?**

  Nepal. In 2000, Nepal experienced a mortality rate of 57.939% from communicable diseases. In 2019, Nepal experienced a mortality rate of 24.821% from communicable diseases. This is a 33.118% decrease in mortality rates from communicable diseases.

- **Which country experienced the highest increase in mortality rate by CDs between 2000 to 2019?**

   Greece. In 2000, Nepal experienced a mortality rate of 3.917% from communicable diseases. In 2019, Nepal experienced a mortality rate of 12.855% from communicable diseases. This is a 8.937% increase in mortality rates from communicable diseases.

- **What is the global average mortality rate by CDs for each year (2000, 2010, 2015, 2019)?**

  2000: 59.815%

  2010: 48.15%

  2015: 39.391%

  2019: 32.93%
  
- **What is the global change in mortality rate by CDs from 2000 to 2019?**

  There is a 29.479% decrease in mortality rate by communicable diseases from 2000 to 2019

#### Joining Both Datasets

- **In how many countries did the life expectancy increase and mortality rate from communicable diseases decrease from 2000 to 2019?**

  About 146 out of 183 countries experienced an increase in life expectancy and decrease in mortality rate from communicable diseases.
  
- **In how many countries did the life expectancy decrease and mortality rate increase from 2000 to 2019?**

  0.
  
- **What is the average life expectancy of countries in 2019 where the mortality rate increased by more than 5% between 2000 and 2019?**

  79.961

- **What is the average life expectancy of countries in 2019 where the mortality rate decreased by more than 20% between 2000 and 2019?**

  71.97

### Data Visualization
View visualizations [here]()!
1. Global Averages - Life Expectancy
2. Global Averages - Communicable Disease Mortality Rates
3. World Map - Life Expectancy
4. World Map - Communicable Disease Mortality Rates
5. World Map - Communicable Disease Life Expectancy Increases Between 2000 and 2019
6. World Map - Communicable Disease Mortality Rate Decreases Between 2000 and 2019

### Analysis

### Conclusion

### Sources Used
Both datasets are from the World Bank Open Data, a database that provides free open-source datasets related to global development.

Life Expectancy: [Life expectancy at birth, total (years)](https://data.worldbank.org/indicator/SP.DYN.LE00.IN)

Communicable diseases: [Cause of death, by communicable diseases and maternal, prenatal and nutrition conditions (% of total)](https://data.worldbank.org/indicator/SH.DTH.COMM.ZS)

[About Life Expectancy](https://en.wikipedia.org/wiki/Life_expectancy)

About CDs: [Databank](https://databank.worldbank.org/metadataglossary/health-nutrition-and-population-statistics/series/SH.DTH.COMM.ZS#:~:text=Cause%20of%20death%20refers%20to,such%20as%20underweight%20and%20stunting), [Infection](https://en.wikipedia.org/wiki/Infection#:~:text=An%20infectious%20disease%2C%20also%20known,Infectious%20diseases) 
