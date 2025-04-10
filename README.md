# jpinfect: Notifiable Infectious Diseases in Japan

<!-- badges: start -->

<!-- badges: end -->

The `jpinfect` package provides tools for acquiring and processing notifiable infectious disease data in Japan. It is designed to help researchers, public health officials and developers access, clean, and manipulate data. This package aims to streamline data analysis processes while enabling reproducible research in public health and epidemiology.

Key features include:

-   Access ready-to-use datasets for immediate analysis.

-   Automate the downloading of raw data files for notifiable infectious disease, provided by the government

-   Tools for organising and renaming data files when importing into R

-   Combine segmented data files into a single dataset

-   Compatibility with epidemiological analysis and reporting workflows.

Data sourced from the Japan Institute for Health Security (JIHS). Data provided in this package is subject to their open data policy (Government Standard Terms of Use v1.0). For further details, see [data usage terms](https://id-info.jihs.go.jp/usage-contract.html). This library is independently developed and is not affiliated with any government entity.

## Installation

To install the current version, run the command:

``` r
# install.packages("jpinfect")
devtools::install_github("TomonoriHoshi/jpinfect")
```

## Usage

This is a basic example which shows you how to solve a common problem:

``` r
library(jpinfect)
#> jpinfect package loaded successfully. Timezone set to Asia/Tokyo.
#> Note: Data accuracy depends on the original source.
#> Data sourced from the Japan Institute for Health Security (JIHS).
#> Usage is subject to their open data policy (Government Standard Terms of Use v1.0).
#> Details: https://id-info.jihs.go.jp/usage-contract.html
#> This library is independently developed and is not affiliated with any government entity.

# Loading build-in datasets
data("sex_prefecture")

data("place_prefecture")

data("bullet")
```

## Built-in Datasets

The following datasets are included in this package and sourced from the Japan Institute for Health Security (JIHS). They provide valuable information for analysing infectious disease trends across Japan.

-   `sex_prefecture`: Confirmed weekly case reports on the sex distribution of reported cases by prefecture from 1999 to 2022. For further details, run `?sex_prefecture`.

-   `place_prefecture`: Confirmed weekly case reports about the place of infection by prefecture between 2001 and 2022. For further details, run `?place_prefecture`.

-   `bullet`: Provisional weekly case reported by prefecture from 2022 to the current latest reports. For further details, run `?bullet`.

### Merge datasets

``` r
## Merge build-in datasets
# Merging confirmed case reports into one dataset
confirmed_dataset <- jpinfect_merge(sex_prefecture, place_prefecture)

# Merge three datasets
bind_result <- jpinfect_merge(sex_prefecture, place_prefecture, bullet)
```

The `jpinfect_merge` function helps to merge the datasets into one dataset if necessary, which enables users to start their data analysis instantly.

### **Convert Datasets from Wider to Longer; Vice Versa**

The `jpinfect_pivot` function enables users to seamlessly pivot datasets between wide and long formats. This functionality is particularly useful for reorganising data to suit analysis or visualisation needs.

``` r
# Pivot the dataset: wider to longer
bullet_long <- jpinfect_pivot(bullet)

# Pivot the dataset: longer to wider
bullet_wide <-  jpinfect_pivot(bullet_long)
```

The `jpinfect_pivot` function efficiently handles data transformation, ensuring compatibility with epidemiological workflows and making it easier to manage complex datasets.

## Building Datasets from Source

Although the build-in datasets are provided in this package, it is ideal for scientists, epidemiologists and public health officers to review whole data handling process from the upstream to downstream. For those who cares the precision of dataset, `jpinfect` provides the following functions to build the same datasets or even the latest bullet datasets sourced from the government-provided raw data.

The sources of these datasets can be checked by using `jpinfect_url_confirmed` for confirmed case reports and `jpinfect_url_bullet` for provisional case reports, respectively.

``` r
## Check the source URL for confirmed dataset
# Download case reports by sex and prefecture
jpinfect_url_confirmed(year = 2021, type = "sex")

# Download case reports by the place of incetion and prefecture
jpinfect_url_confirmed(year = 2021, type = "place")
```

The raw data can be downloaded using `jpinfect_get_confirmed` for confirmed case reports and `jpinfect_get_bullet` for provisional case reports, respectively. Confirmed weekly case data is organised into a single Microsoft Excel file for each year, while provisional data is provided as separate CSV files for each week.

``` r
# Download data for 2020 and 2021
jpinfect_get_confirmed(years = c(2020, 2021), type = "sex")

# Download data for all available years
jpinfect_get_confirmed(type = "place")

# Download English data for weeks 1 to 5 in 2025
jpinfect_get_bullet(year = 2025, week = 1:5, dest_dir = "raw_data")

# Download Japanese data for all weeks in 2025
jpinfect_get_bullet(year = 2025, language = "jp", dest_dir = "raw_data")
```

The acquired raw data into your local computer could be imported into R using `jpinfect_read_confirmed` and `jpinfect_read_bullet`. Both commands import datasets from

``` r
## Import confirmed case reports from file or directory
# Process a single file
dataset2021 <- jpinfect_read_confirmed(path = "2021_Syu_01_1.xlsx")

# Process all files in a directory
place_dataset <- jpinfect_read_confirmed(path = "raw_data", type = "place")


## Import bullet case reports
# Import all English reports in a directory
bullet <- jpinfect_read_bullet(directory = "raw_data")

# Import specific period of the data for 2025, weeks 1 to 10
bullet2025 <- jpinfect_read_bullet(year = 2025, week = 1:10, directory = "raw_data")
```

## Report a bug

If you encounter a bug or issue while using the `jpinfect` package, we encourage you to report it. Please follow the steps below to help us resolve the problem efficiently:

1.  **Check Existing Issues**: Before submitting a new bug report, visit the Issues page on GitHub to check if the issue has already been reported.

2.  **Submit a New Issue**: If the issue is new, create a detailed report by clicking on the **"New Issue"** button. Include the following information:

    -   A clear description of the issue or unexpected behavior.

    -   Steps to reproduce the issue, if possible.

    -   Your R version and operating system (e.g., Windows 10, macOS Ventura).

    -   Any relevant error messages or output.

    -   Example code or datasets (if applicable) to demonstrate the problem.

3.  **Follow-Up**: We appreciate your feedback! Once your issue is submitted, we may ask for additional information to resolve it. Please check back periodically for updates.

By contributing bug reports, you help us improve the `jpinfect` package for everyone. Thank you for your support!
