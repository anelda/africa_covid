# Background

This repository contains scripts and instructions for converting the BU dataset from https://github.com/dsfsi/covid19africa/issues/161 to country line lists as per the template provided by the DSFSI group (https://github.com/dsfsi/covid19africa/tree/master/data/templates)

# Instructions

- The raw data (Excel format) seems to have strangely formatted data in the date columns which reads in incorrectly in R and OpenRefine
- I converted the Excel format to CSV by opening the file in LibreOffice and saving as CSV
- Open the CSV file in OpenRefine (version 3.2) and run the script available at https://github.com/anelda/africa_covid/blob/master/scripts/bu-data-openrefine.json on the data to:

  - Clean up an error in the age column (contains an `s` in one row)
  - Edit column headers to correlate with the expected column headers in the country line list CSV template that is provided
  - Add empty columns where data is not available for columns that should be present based on the country line list CSV template
  - Combine all columns that are not present in the country line list CSV template into a single column called `notes_for_discussion`
  - Export cleaned up CSV from OpenRefine for further manipulation in R

- Run the R script on the CSV file that is exported from OpenRefine to separate master file into country CSV files

# Further work

- The data should be compared with existing line lists in the DSFSI COVID19 Africa repository
- Single line lists should be created for each country combining existing line lists with the BU data
- Some data is available from the `notes_for_discussion` column that can be used to populate other columns but that was not automatable and will take considerably more time to extract
- In the original dataset the column `Where isolated/identified` contains information about cities, but in some cases also hospitals, etc. This will have to be cleaned up.
