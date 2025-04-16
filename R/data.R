#' English Names of Prefectures in Japan
#'
#' @description
#' This vector contains the English names of all 47 prefectures in Japan,
#' listed in geographical order, starting from Hokkaido in the north to Okinawa in the south.
#'
#' @format A character vector of length 47.
#' \describe{
#'   \item{Hokkaido}{The northernmost prefecture.}
#'   \item{Aomori}{Located in the Tohoku region.}
#'   \item{...}{Other prefectures follow in geographical order.}
#'   \item{Okinawa}{The southernmost prefecture.}
#' }
#'
#' @examples
#' # Access the first prefecture
#' prefecture_en[1]  # "Hokkaido"
#'
#' # Print all prefectures
#' print(prefecture_en)
#'
#' @export
prefecture_en <- c("Hokkaido", "Aomori", "Iwate", "Miyagi", "Akita", "Yamagata", "Fukushima", "Ibaraki", "Tochigi",
                   "Gunma", "Saitama", "Chiba", "Tokyo", "Kanagawa", "Niigata", "Toyama", "Ishikawa", "Fukui",
                   "Yamanashi", "Nagano", "Gifu", "Shizuoka", "Aichi", "Mie", "Shiga", "Kyoto", "Osaka",
                   "Hyogo", "Nara", "Wakayama", "Tottori", "Shimane", "Okayama", "Hiroshima", "Yamaguchi", "Tokushima",
                   "Kagawa", "Ehime", "Kochi", "Fukuoka", "Saga", "Nagasaki", "Kumamoto", "Oita", "Miyazaki",
                   "Kagoshima", "Okinawa")

#' Place Prefecture Data
#' @description
#' This dataset contains information about the place of infection by prefecture,
#' sourced from the Japan Institute for Health Security (JIHS). The data is between
#' 2001 and 2022.
#'
#' @format A data frame with 55056 rows and 419 columns.
#' \describe{
#' \item{prefecture}{Case numbers for prefecture}
#' \item{year}{Case numbers for year}
#' \item{week}{Case numbers for week}
#' \item{Ebola hemorrhagic fever (total)}{Case numbers for Ebola hemorrhagic fever (total)}
#' \item{Ebola hemorrhagic fever (Inside Japan)}{Case numbers for Ebola hemorrhagic fever (Inside Japan)}
#' \item{Ebola hemorrhagic fever (Others)}{Case numbers for Ebola hemorrhagic fever (Others)}
#' \item{Ebola hemorrhagic fever (Unknown)}{Case numbers for Ebola hemorrhagic fever (Unknown)}
#' \item{Crimean-Congo hemorrhagic fever (total)}{Case numbers for Crimean-Congo hemorrhagic fever (total)}
#' \item{Crimean-Congo hemorrhagic fever (Inside Japan)}{Case numbers for Crimean-Congo hemorrhagic fever (Inside Japan)}
#' \item{Crimean-Congo hemorrhagic fever (Others)}{Case numbers for Crimean-Congo hemorrhagic fever (Others)}
#' \item{Crimean-Congo hemorrhagic fever (Unknown)}{Case numbers for Crimean-Congo hemorrhagic fever (Unknown)}
#' \item{Plague (total)}{Case numbers for Plague (total)}
#' \item{Plague (Inside Japan)}{Case numbers for Plague (Inside Japan)}
#' \item{Plague (Others)}{Case numbers for Plague (Others)}
#' \item{Plague (Unknown)}{Case numbers for Plague (Unknown)}
#' \item{Marburg disease (total)}{Case numbers for Marburg disease (total)}
#' \item{Marburg disease (Inside Japan)}{Case numbers for Marburg disease (Inside Japan)}
#' \item{Marburg disease (Others)}{Case numbers for Marburg disease (Others)}
#' \item{Marburg disease (Unknown)}{Case numbers for Marburg disease (Unknown)}
#' \item{Lassa fever (total)}{Case numbers for Lassa fever (total)}
#' \item{Lassa fever (Inside Japan)}{Case numbers for Lassa fever (Inside Japan)}
#' \item{Lassa fever (Others)}{Case numbers for Lassa fever (Others)}
#' \item{Lassa fever (Unknown)}{Case numbers for Lassa fever (Unknown)}
#' \item{Cholera (total)}{Case numbers for Cholera (total)}
#' \item{Cholera (Inside Japan)}{Case numbers for Cholera (Inside Japan)}
#' \item{Cholera (Others)}{Case numbers for Cholera (Others)}
#' \item{Cholera (Unknown)}{Case numbers for Cholera (Unknown)}
#' \item{Shigellosis (total)}{Case numbers for Shigellosis (total)}
#' \item{Shigellosis (Inside Japan)}{Case numbers for Shigellosis (Inside Japan)}
#' \item{Shigellosis (Others)}{Case numbers for Shigellosis (Others)}
#' \item{Shigellosis (Unknown)}{Case numbers for Shigellosis (Unknown)}
#' \item{Typhoid fever (total)}{Case numbers for Typhoid fever (total)}
#' \item{Typhoid fever (Inside Japan)}{Case numbers for Typhoid fever (Inside Japan)}
#' \item{Typhoid fever (Others)}{Case numbers for Typhoid fever (Others)}
#' \item{Typhoid fever (Unknown)}{Case numbers for Typhoid fever (Unknown)}
#' \item{Paratyphoid fever (total)}{Case numbers for Paratyphoid fever (total)}
#' \item{Paratyphoid fever (Inside Japan)}{Case numbers for Paratyphoid fever (Inside Japan)}
#' \item{Paratyphoid fever (Others)}{Case numbers for Paratyphoid fever (Others)}
#' \item{Paratyphoid fever (Unknown)}{Case numbers for Paratyphoid fever (Unknown)}
#' \item{Poliomyelitis (total)}{Case numbers for Poliomyelitis (total)}
#' \item{Poliomyelitis (Inside Japan)}{Case numbers for Poliomyelitis (Inside Japan)}
#' \item{Poliomyelitis (Others)}{Case numbers for Poliomyelitis (Others)}
#' \item{Poliomyelitis (Unknown)}{Case numbers for Poliomyelitis (Unknown)}
#' \item{Diphtheria (total)}{Case numbers for Diphtheria (total)}
#' \item{Diphtheria (Inside Japan)}{Case numbers for Diphtheria (Inside Japan)}
#' \item{Diphtheria (Others)}{Case numbers for Diphtheria (Others)}
#' \item{Diphtheria (Unknown)}{Case numbers for Diphtheria (Unknown)}
#' \item{Enterohemorrhagic E. coli infection (total)}{Case numbers for Enterohemorrhagic E. coli infection (total)}
#' \item{Enterohemorrhagic E. coli infection (Inside Japan)}{Case numbers for Enterohemorrhagic E. coli infection (Inside Japan)}
#' \item{Enterohemorrhagic E. coli infection (Others)}{Case numbers for Enterohemorrhagic E. coli infection (Others)}
#' \item{Enterohemorrhagic E. coli infection (Unknown)}{Case numbers for Enterohemorrhagic E. coli infection (Unknown)}
#' \item{Amebiasis (total)}{Case numbers for Amebiasis (total)}
#' \item{Amebiasis (Inside Japan)}{Case numbers for Amebiasis (Inside Japan)}
#' \item{Amebiasis (Others)}{Case numbers for Amebiasis (Others)}
#' \item{Amebiasis (Unknown)}{Case numbers for Amebiasis (Unknown)}
#' \item{Echinococcosis (total)}{Case numbers for Echinococcosis (total)}
#' \item{Echinococcosis (Inside Japan)}{Case numbers for Echinococcosis (Inside Japan)}
#' \item{Echinococcosis (Others)}{Case numbers for Echinococcosis (Others)}
#' \item{Echinococcosis (Unknown)}{Case numbers for Echinococcosis (Unknown)}
#' \item{Yellow fever (total)}{Case numbers for Yellow fever (total)}
#' \item{Yellow fever (Inside Japan)}{Case numbers for Yellow fever (Inside Japan)}
#' \item{Yellow fever (Others)}{Case numbers for Yellow fever (Others)}
#' \item{Yellow fever (Unknown)}{Case numbers for Yellow fever (Unknown)}
#' \item{Psittacosis (total)}{Case numbers for Psittacosis (total)}
#' \item{Psittacosis (Inside Japan)}{Case numbers for Psittacosis (Inside Japan)}
#' \item{Psittacosis (Others)}{Case numbers for Psittacosis (Others)}
#' \item{Psittacosis (Unknown)}{Case numbers for Psittacosis (Unknown)}
#' \item{Relapsing fever (total)}{Case numbers for Relapsing fever (total)}
#' \item{Relapsing fever (Inside Japan)}{Case numbers for Relapsing fever (Inside Japan)}
#' \item{Relapsing fever (Others)}{Case numbers for Relapsing fever (Others)}
#' \item{Relapsing fever (Unknown)}{Case numbers for Relapsing fever (Unknown)}
#' \item{Acute viral hepatitis (total)}{Case numbers for Acute viral hepatitis (total)}
#' \item{Acute viral hepatitis (Inside Japan)}{Case numbers for Acute viral hepatitis (Inside Japan)}
#' \item{Acute viral hepatitis (Others)}{Case numbers for Acute viral hepatitis (Others)}
#' \item{Acute viral hepatitis (Unknown)}{Case numbers for Acute viral hepatitis (Unknown)}
#' \item{Q fever (total)}{Case numbers for Q fever (total)}
#' \item{Q fever (Inside Japan)}{Case numbers for Q fever (Inside Japan)}
#' \item{Q fever (Others)}{Case numbers for Q fever (Others)}
#' \item{Q fever (Unknown)}{Case numbers for Q fever (Unknown)}
#' \item{Rabies (total)}{Case numbers for Rabies (total)}
#' \item{Rabies (Inside Japan)}{Case numbers for Rabies (Inside Japan)}
#' \item{Rabies (Others)}{Case numbers for Rabies (Others)}
#' \item{Rabies (Unknown)}{Case numbers for Rabies (Unknown)}
#' \item{Cryptosporidiosis (total)}{Case numbers for Cryptosporidiosis (total)}
#' \item{Cryptosporidiosis (Inside Japan)}{Case numbers for Cryptosporidiosis (Inside Japan)}
#' \item{Cryptosporidiosis (Others)}{Case numbers for Cryptosporidiosis (Others)}
#' \item{Cryptosporidiosis (Unknown)}{Case numbers for Cryptosporidiosis (Unknown)}
#' \item{Creutzfeldt-Jakob disease (total)}{Case numbers for Creutzfeldt-Jakob disease (total)}
#' \item{Creutzfeldt-Jakob disease (Inside Japan)}{Case numbers for Creutzfeldt-Jakob disease (Inside Japan)}
#' \item{Creutzfeldt-Jakob disease (Others)}{Case numbers for Creutzfeldt-Jakob disease (Others)}
#' \item{Creutzfeldt-Jakob disease (Unknown)}{Case numbers for Creutzfeldt-Jakob disease (Unknown)}
#' \item{Severe invasive streptococcal infections (total)}{Case numbers for Severe invasive streptococcal infections (total)}
#' \item{Severe invasive streptococcal infections (Inside Japan)}{Case numbers for Severe invasive streptococcal infections (Inside Japan)}
#' \item{Severe invasive streptococcal infections (Others)}{Case numbers for Severe invasive streptococcal infections (Others)}
#' \item{Severe invasive streptococcal infections (Unknown)}{Case numbers for Severe invasive streptococcal infections (Unknown)}
#' \item{AIDS (total)}{Case numbers for AIDS (total)}
#' \item{AIDS (Inside Japan)}{Case numbers for AIDS (Inside Japan)}
#' \item{AIDS (Others)}{Case numbers for AIDS (Others)}
#' \item{AIDS (Unknown)}{Case numbers for AIDS (Unknown)}
#' \item{Coccidioidomycosis (total)}{Case numbers for Coccidioidomycosis (total)}
#' \item{Coccidioidomycosis (Inside Japan)}{Case numbers for Coccidioidomycosis (Inside Japan)}
#' \item{Coccidioidomycosis (Others)}{Case numbers for Coccidioidomycosis (Others)}
#' \item{Coccidioidomycosis (Unknown)}{Case numbers for Coccidioidomycosis (Unknown)}
#' \item{Giardiasis (total)}{Case numbers for Giardiasis (total)}
#' \item{Giardiasis (Inside Japan)}{Case numbers for Giardiasis (Inside Japan)}
#' \item{Giardiasis (Others)}{Case numbers for Giardiasis (Others)}
#' \item{Giardiasis (Unknown)}{Case numbers for Giardiasis (Unknown)}
#' \item{Hemorrhagic fever with renal syndrome (total)}{Case numbers for Hemorrhagic fever with renal syndrome (total)}
#' \item{Hemorrhagic fever with renal syndrome (Inside Japan)}{Case numbers for Hemorrhagic fever with renal syndrome (Inside Japan)}
#' \item{Hemorrhagic fever with renal syndrome (Others)}{Case numbers for Hemorrhagic fever with renal syndrome (Others)}
#' \item{Hemorrhagic fever with renal syndrome (Unknown)}{Case numbers for Hemorrhagic fever with renal syndrome (Unknown)}
#' \item{Meningococcal meningitis (total)}{Case numbers for Meningococcal meningitis (total)}
#' \item{Meningococcal meningitis (Inside Japan)}{Case numbers for Meningococcal meningitis (Inside Japan)}
#' \item{Meningococcal meningitis (Others)}{Case numbers for Meningococcal meningitis (Others)}
#' \item{Meningococcal meningitis (Unknown)}{Case numbers for Meningococcal meningitis (Unknown)}
#' \item{Congenital rubella syndrome (total)}{Case numbers for Congenital rubella syndrome (total)}
#' \item{Congenital rubella syndrome (Inside Japan)}{Case numbers for Congenital rubella syndrome (Inside Japan)}
#' \item{Congenital rubella syndrome (Others)}{Case numbers for Congenital rubella syndrome (Others)}
#' \item{Congenital rubella syndrome (Unknown)}{Case numbers for Congenital rubella syndrome (Unknown)}
#' \item{Anthrax (total)}{Case numbers for Anthrax (total)}
#' \item{Anthrax (Inside Japan)}{Case numbers for Anthrax (Inside Japan)}
#' \item{Anthrax (Others)}{Case numbers for Anthrax (Others)}
#' \item{Anthrax (Unknown)}{Case numbers for Anthrax (Unknown)}
#' \item{Scrub typhus (total)}{Case numbers for Scrub typhus (total)}
#' \item{Scrub typhus (Inside Japan)}{Case numbers for Scrub typhus (Inside Japan)}
#' \item{Scrub typhus (Others)}{Case numbers for Scrub typhus (Others)}
#' \item{Scrub typhus (Unknown)}{Case numbers for Scrub typhus (Unknown)}
#' \item{Dengue fever (total)}{Case numbers for Dengue fever (total)}
#' \item{Dengue fever (Inside Japan)}{Case numbers for Dengue fever (Inside Japan)}
#' \item{Dengue fever (Others)}{Case numbers for Dengue fever (Others)}
#' \item{Dengue fever (Unknown)}{Case numbers for Dengue fever (Unknown)}
#' \item{Japanese spotted fever (total)}{Case numbers for Japanese spotted fever (total)}
#' \item{Japanese spotted fever (Inside Japan)}{Case numbers for Japanese spotted fever (Inside Japan)}
#' \item{Japanese spotted fever (Others)}{Case numbers for Japanese spotted fever (Others)}
#' \item{Japanese spotted fever (Unknown)}{Case numbers for Japanese spotted fever (Unknown)}
#' \item{Japanese encephalitis (total)}{Case numbers for Japanese encephalitis (total)}
#' \item{Japanese encephalitis (Inside Japan)}{Case numbers for Japanese encephalitis (Inside Japan)}
#' \item{Japanese encephalitis (Others)}{Case numbers for Japanese encephalitis (Others)}
#' \item{Japanese encephalitis (Unknown)}{Case numbers for Japanese encephalitis (Unknown)}
#' \item{Infant botulism (total)}{Case numbers for Infant botulism (total)}
#' \item{Infant botulism (Inside Japan)}{Case numbers for Infant botulism (Inside Japan)}
#' \item{Infant botulism (Others)}{Case numbers for Infant botulism (Others)}
#' \item{Infant botulism (Unknown)}{Case numbers for Infant botulism (Unknown)}
#' \item{Syphilis (total)}{Case numbers for Syphilis (total)}
#' \item{Syphilis (Inside Japan)}{Case numbers for Syphilis (Inside Japan)}
#' \item{Syphilis (Others)}{Case numbers for Syphilis (Others)}
#' \item{Syphilis (Unknown)}{Case numbers for Syphilis (Unknown)}
#' \item{Tetanus (total)}{Case numbers for Tetanus (total)}
#' \item{Tetanus (Inside Japan)}{Case numbers for Tetanus (Inside Japan)}
#' \item{Tetanus (Others)}{Case numbers for Tetanus (Others)}
#' \item{Tetanus (Unknown)}{Case numbers for Tetanus (Unknown)}
#' \item{VRE infection (total)}{Case numbers for VRE infection (total)}
#' \item{VRE infection (Inside Japan)}{Case numbers for VRE infection (Inside Japan)}
#' \item{VRE infection (Others)}{Case numbers for VRE infection (Others)}
#' \item{VRE infection (Unknown)}{Case numbers for VRE infection (Unknown)}
#' \item{Hantavirus pulmonary syndrome (total)}{Case numbers for Hantavirus pulmonary syndrome (total)}
#' \item{Hantavirus pulmonary syndrome (Inside Japan)}{Case numbers for Hantavirus pulmonary syndrome (Inside Japan)}
#' \item{Hantavirus pulmonary syndrome (Others)}{Case numbers for Hantavirus pulmonary syndrome (Others)}
#' \item{Hantavirus pulmonary syndrome (Unknown)}{Case numbers for Hantavirus pulmonary syndrome (Unknown)}
#' \item{B virus disease (total)}{Case numbers for B virus disease (total)}
#' \item{B virus disease (Inside Japan)}{Case numbers for B virus disease (Inside Japan)}
#' \item{B virus disease (Others)}{Case numbers for B virus disease (Others)}
#' \item{B virus disease (Unknown)}{Case numbers for B virus disease (Unknown)}
#' \item{Brucellosis (total)}{Case numbers for Brucellosis (total)}
#' \item{Brucellosis (Inside Japan)}{Case numbers for Brucellosis (Inside Japan)}
#' \item{Brucellosis (Others)}{Case numbers for Brucellosis (Others)}
#' \item{Brucellosis (Unknown)}{Case numbers for Brucellosis (Unknown)}
#' \item{Epidemic louse-borne typhus (total)}{Case numbers for Epidemic louse-borne typhus (total)}
#' \item{Epidemic louse-borne typhus (Inside Japan)}{Case numbers for Epidemic louse-borne typhus (Inside Japan)}
#' \item{Epidemic louse-borne typhus (Others)}{Case numbers for Epidemic louse-borne typhus (Others)}
#' \item{Epidemic louse-borne typhus (Unknown)}{Case numbers for Epidemic louse-borne typhus (Unknown)}
#' \item{Malaria (total)}{Case numbers for Malaria (total)}
#' \item{Malaria (Inside Japan)}{Case numbers for Malaria (Inside Japan)}
#' \item{Malaria (Others)}{Case numbers for Malaria (Others)}
#' \item{Malaria (Unknown)}{Case numbers for Malaria (Unknown)}
#' \item{Lyme disease (total)}{Case numbers for Lyme disease (total)}
#' \item{Lyme disease (Inside Japan)}{Case numbers for Lyme disease (Inside Japan)}
#' \item{Lyme disease (Others)}{Case numbers for Lyme disease (Others)}
#' \item{Lyme disease (Unknown)}{Case numbers for Lyme disease (Unknown)}
#' \item{Legionellosis (total)}{Case numbers for Legionellosis (total)}
#' \item{Legionellosis (Inside Japan)}{Case numbers for Legionellosis (Inside Japan)}
#' \item{Legionellosis (Others)}{Case numbers for Legionellosis (Others)}
#' \item{Legionellosis (Unknown)}{Case numbers for Legionellosis (Unknown)}
#' \item{Severe Acute Respiratory Syndrome (SARS) (total)}{Case numbers for Severe Acute Respiratory Syndrome (SARS) (total)}
#' \item{Severe Acute Respiratory Syndrome (SARS) (Inside Japan)}{Case numbers for Severe Acute Respiratory Syndrome (SARS) (Inside Japan)}
#' \item{Severe Acute Respiratory Syndrome (SARS) (Others)}{Case numbers for Severe Acute Respiratory Syndrome (SARS) (Others)}
#' \item{Severe Acute Respiratory Syndrome (SARS) (Unknown)}{Case numbers for Severe Acute Respiratory Syndrome (SARS) (Unknown)}
#' \item{Smallpox (total)}{Case numbers for Smallpox (total)}
#' \item{Smallpox (Inside Japan)}{Case numbers for Smallpox (Inside Japan)}
#' \item{Smallpox (Others)}{Case numbers for Smallpox (Others)}
#' \item{Smallpox (Unknown)}{Case numbers for Smallpox (Unknown)}
#' \item{Acute poliomyelitis (total)}{Case numbers for Acute poliomyelitis (total)}
#' \item{Acute poliomyelitis (Inside Japan)}{Case numbers for Acute poliomyelitis (Inside Japan)}
#' \item{Acute poliomyelitis (Others)}{Case numbers for Acute poliomyelitis (Others)}
#' \item{Acute poliomyelitis (Unknown)}{Case numbers for Acute poliomyelitis (Unknown)}
#' \item{Enterohemorrhagic Escherichia coli infection (total)}{Case numbers for Enterohemorrhagic Escherichia coli infection (total)}
#' \item{Enterohemorrhagic Escherichia coli infection (Inside Japan)}{Case numbers for Enterohemorrhagic Escherichia coli infection (Inside Japan)}
#' \item{Enterohemorrhagic Escherichia coli infection (Others)}{Case numbers for Enterohemorrhagic Escherichia coli infection (Others)}
#' \item{Enterohemorrhagic Escherichia coli infection (Unknown)}{Case numbers for Enterohemorrhagic Escherichia coli infection (Unknown)}
#' \item{Hepatitis E (total)}{Case numbers for Hepatitis E (total)}
#' \item{Hepatitis E (Inside Japan)}{Case numbers for Hepatitis E (Inside Japan)}
#' \item{Hepatitis E (Others)}{Case numbers for Hepatitis E (Others)}
#' \item{Hepatitis E (Unknown)}{Case numbers for Hepatitis E (Unknown)}
#' \item{West Nile fever (including West Nile encephalitis) (total)}{Case numbers for West Nile fever (including West Nile encephalitis) (total)}
#' \item{West Nile fever (including West Nile encephalitis) (Inside Japan)}{Case numbers for West Nile fever (including West Nile encephalitis) (Inside Japan)}
#' \item{West Nile fever (including West Nile encephalitis) (Others)}{Case numbers for West Nile fever (including West Nile encephalitis) (Others)}
#' \item{West Nile fever (including West Nile encephalitis) (Unknown)}{Case numbers for West Nile fever (including West Nile encephalitis) (Unknown)}
#' \item{Hepatitis A (total)}{Case numbers for Hepatitis A (total)}
#' \item{Hepatitis A (Inside Japan)}{Case numbers for Hepatitis A (Inside Japan)}
#' \item{Hepatitis A (Others)}{Case numbers for Hepatitis A (Others)}
#' \item{Hepatitis A (Unknown)}{Case numbers for Hepatitis A (Unknown)}
#' \item{Avian influenza virus infection (total)}{Case numbers for Avian influenza virus infection (total)}
#' \item{Avian influenza virus infection (Inside Japan)}{Case numbers for Avian influenza virus infection (Inside Japan)}
#' \item{Avian influenza virus infection (Others)}{Case numbers for Avian influenza virus infection (Others)}
#' \item{Avian influenza virus infection (Unknown)}{Case numbers for Avian influenza virus infection (Unknown)}
#' \item{Monkeypox (total)}{Case numbers for Monkeypox (total)}
#' \item{Monkeypox (Inside Japan)}{Case numbers for Monkeypox (Inside Japan)}
#' \item{Monkeypox (Others)}{Case numbers for Monkeypox (Others)}
#' \item{Monkeypox (Unknown)}{Case numbers for Monkeypox (Unknown)}
#' \item{Scrub typhus (Tsutsugamushi disease) (total)}{Case numbers for Scrub typhus (Tsutsugamushi disease) (total)}
#' \item{Scrub typhus (Tsutsugamushi disease) (Inside Japan)}{Case numbers for Scrub typhus (Tsutsugamushi disease) (Inside Japan)}
#' \item{Scrub typhus (Tsutsugamushi disease) (Others)}{Case numbers for Scrub typhus (Tsutsugamushi disease) (Others)}
#' \item{Scrub typhus (Tsutsugamushi disease) (Unknown)}{Case numbers for Scrub typhus (Tsutsugamushi disease) (Unknown)}
#' \item{Nipah virus infection (total)}{Case numbers for Nipah virus infection (total)}
#' \item{Nipah virus infection (Inside Japan)}{Case numbers for Nipah virus infection (Inside Japan)}
#' \item{Nipah virus infection (Others)}{Case numbers for Nipah virus infection (Others)}
#' \item{Nipah virus infection (Unknown)}{Case numbers for Nipah virus infection (Unknown)}
#' \item{Herpes B virus infection (total)}{Case numbers for Herpes B virus infection (total)}
#' \item{Herpes B virus infection (Inside Japan)}{Case numbers for Herpes B virus infection (Inside Japan)}
#' \item{Herpes B virus infection (Others)}{Case numbers for Herpes B virus infection (Others)}
#' \item{Herpes B virus infection (Unknown)}{Case numbers for Herpes B virus infection (Unknown)}
#' \item{Epidemic typhus (total)}{Case numbers for Epidemic typhus (total)}
#' \item{Epidemic typhus (Inside Japan)}{Case numbers for Epidemic typhus (Inside Japan)}
#' \item{Epidemic typhus (Others)}{Case numbers for Epidemic typhus (Others)}
#' \item{Epidemic typhus (Unknown)}{Case numbers for Epidemic typhus (Unknown)}
#' \item{Botulism (total)}{Case numbers for Botulism (total)}
#' \item{Botulism (Inside Japan)}{Case numbers for Botulism (Inside Japan)}
#' \item{Botulism (Others)}{Case numbers for Botulism (Others)}
#' \item{Botulism (Unknown)}{Case numbers for Botulism (Unknown)}
#' \item{Tularemia (total)}{Case numbers for Tularemia (total)}
#' \item{Tularemia (Inside Japan)}{Case numbers for Tularemia (Inside Japan)}
#' \item{Tularemia (Others)}{Case numbers for Tularemia (Others)}
#' \item{Tularemia (Unknown)}{Case numbers for Tularemia (Unknown)}
#' \item{Lyssavirus infection (excluding rabies) (total)}{Case numbers for Lyssavirus infection (excluding rabies) (total)}
#' \item{Lyssavirus infection (excluding rabies) (Inside Japan)}{Case numbers for Lyssavirus infection (excluding rabies) (Inside Japan)}
#' \item{Lyssavirus infection (excluding rabies) (Others)}{Case numbers for Lyssavirus infection (excluding rabies) (Others)}
#' \item{Lyssavirus infection (excluding rabies) (Unknown)}{Case numbers for Lyssavirus infection (excluding rabies) (Unknown)}
#' \item{Leptospirosis (total)}{Case numbers for Leptospirosis (total)}
#' \item{Leptospirosis (Inside Japan)}{Case numbers for Leptospirosis (Inside Japan)}
#' \item{Leptospirosis (Others)}{Case numbers for Leptospirosis (Others)}
#' \item{Leptospirosis (Unknown)}{Case numbers for Leptospirosis (Unknown)}
#' \item{Viral hepatitis (excluding hepatitis A and E) (total)}{Case numbers for Viral hepatitis (excluding hepatitis A and E) (total)}
#' \item{Viral hepatitis (excluding hepatitis A and E) (Inside Japan)}{Case numbers for Viral hepatitis (excluding hepatitis A and E) (Inside Japan)}
#' \item{Viral hepatitis (excluding hepatitis A and E) (Others)}{Case numbers for Viral hepatitis (excluding hepatitis A and E) (Others)}
#' \item{Viral hepatitis (excluding hepatitis A and E) (Unknown)}{Case numbers for Viral hepatitis (excluding hepatitis A and E) (Unknown)}
#' \item{Acute encephalitis (excluding JE and WNE) (total)}{Case numbers for Acute encephalitis (excluding JE and WNE) (total)}
#' \item{Acute encephalitis (excluding JE and WNE) (Inside Japan)}{Case numbers for Acute encephalitis (excluding JE and WNE) (Inside Japan)}
#' \item{Acute encephalitis (excluding JE and WNE) (Others)}{Case numbers for Acute encephalitis (excluding JE and WNE) (Others)}
#' \item{Acute encephalitis (excluding JE and WNE) (Unknown)}{Case numbers for Acute encephalitis (excluding JE and WNE) (Unknown)}
#' \item{Infectious CJD (total)}{Case numbers for Infectious CJD (total)}
#' \item{Infectious CJD (Inside Japan)}{Case numbers for Infectious CJD (Inside Japan)}
#' \item{Infectious CJD (Others)}{Case numbers for Infectious CJD (Others)}
#' \item{Infectious CJD (Unknown)}{Case numbers for Infectious CJD (Unknown)}
#' \item{Severe invasive streptococcal infections (TSLS) (total)}{Case numbers for Severe invasive streptococcal infections (TSLS) (total)}
#' \item{Severe invasive streptococcal infections (TSLS) (Inside Japan)}{Case numbers for Severe invasive streptococcal infections (TSLS) (Inside Japan)}
#' \item{Severe invasive streptococcal infections (TSLS) (Others)}{Case numbers for Severe invasive streptococcal infections (TSLS) (Others)}
#' \item{Severe invasive streptococcal infections (TSLS) (Unknown)}{Case numbers for Severe invasive streptococcal infections (TSLS) (Unknown)}
#' \item{Acquired immunodeficiency syndrome (AIDS) (total)}{Case numbers for Acquired immunodeficiency syndrome (AIDS) (total)}
#' \item{Acquired immunodeficiency syndrome (AIDS) (Inside Japan)}{Case numbers for Acquired immunodeficiency syndrome (AIDS) (Inside Japan)}
#' \item{Acquired immunodeficiency syndrome (AIDS) (Others)}{Case numbers for Acquired immunodeficiency syndrome (AIDS) (Others)}
#' \item{Acquired immunodeficiency syndrome (AIDS) (Unknown)}{Case numbers for Acquired immunodeficiency syndrome (AIDS) (Unknown)}
#' \item{Vancomycin-resistant S. aureus infection (total)}{Case numbers for Vancomycin-resistant S. aureus infection (total)}
#' \item{Vancomycin-resistant S. aureus infection (Inside Japan)}{Case numbers for Vancomycin-resistant S. aureus infection (Inside Japan)}
#' \item{Vancomycin-resistant S. aureus infection (Others)}{Case numbers for Vancomycin-resistant S. aureus infection (Others)}
#' \item{Vancomycin-resistant S. aureus infection (Unknown)}{Case numbers for Vancomycin-resistant S. aureus infection (Unknown)}
#' \item{Vancomycin-resistant Enterococcus infection (total)}{Case numbers for Vancomycin-resistant Enterococcus infection (total)}
#' \item{Vancomycin-resistant Enterococcus infection (Inside Japan)}{Case numbers for Vancomycin-resistant Enterococcus infection (Inside Japan)}
#' \item{Vancomycin-resistant Enterococcus infection (Others)}{Case numbers for Vancomycin-resistant Enterococcus infection (Others)}
#' \item{Vancomycin-resistant Enterococcus infection (Unknown)}{Case numbers for Vancomycin-resistant Enterococcus infection (Unknown)}
#' \item{South American hemorrhagic fever (total)}{Case numbers for South American hemorrhagic fever (total)}
#' \item{South American hemorrhagic fever (Inside Japan)}{Case numbers for South American hemorrhagic fever (Inside Japan)}
#' \item{South American hemorrhagic fever (Others)}{Case numbers for South American hemorrhagic fever (Others)}
#' \item{South American hemorrhagic fever (Unknown)}{Case numbers for South American hemorrhagic fever (Unknown)}
#' \item{Tuberculosis (total)}{Case numbers for Tuberculosis (total)}
#' \item{Tuberculosis (Inside Japan)}{Case numbers for Tuberculosis (Inside Japan)}
#' \item{Tuberculosis (Others)}{Case numbers for Tuberculosis (Others)}
#' \item{Tuberculosis (Unknown)}{Case numbers for Tuberculosis (Unknown)}
#' \item{West Nile fever (total)}{Case numbers for West Nile fever (total)}
#' \item{West Nile fever (Inside Japan)}{Case numbers for West Nile fever (Inside Japan)}
#' \item{West Nile fever (Others)}{Case numbers for West Nile fever (Others)}
#' \item{West Nile fever (Unknown)}{Case numbers for West Nile fever (Unknown)}
#' \item{Omsk hemorrhagic fever (total)}{Case numbers for Omsk hemorrhagic fever (total)}
#' \item{Omsk hemorrhagic fever (Inside Japan)}{Case numbers for Omsk hemorrhagic fever (Inside Japan)}
#' \item{Omsk hemorrhagic fever (Others)}{Case numbers for Omsk hemorrhagic fever (Others)}
#' \item{Omsk hemorrhagic fever (Unknown)}{Case numbers for Omsk hemorrhagic fever (Unknown)}
#' \item{Kyasanur forest disease (total)}{Case numbers for Kyasanur forest disease (total)}
#' \item{Kyasanur forest disease (Inside Japan)}{Case numbers for Kyasanur forest disease (Inside Japan)}
#' \item{Kyasanur forest disease (Others)}{Case numbers for Kyasanur forest disease (Others)}
#' \item{Kyasanur forest disease (Unknown)}{Case numbers for Kyasanur forest disease (Unknown)}
#' \item{Western equine encephalitis (total)}{Case numbers for Western equine encephalitis (total)}
#' \item{Western equine encephalitis (Inside Japan)}{Case numbers for Western equine encephalitis (Inside Japan)}
#' \item{Western equine encephalitis (Others)}{Case numbers for Western equine encephalitis (Others)}
#' \item{Western equine encephalitis (Unknown)}{Case numbers for Western equine encephalitis (Unknown)}
#' \item{Tick-borne encephalitis (total)}{Case numbers for Tick-borne encephalitis (total)}
#' \item{Tick-borne encephalitis (Inside Japan)}{Case numbers for Tick-borne encephalitis (Inside Japan)}
#' \item{Tick-borne encephalitis (Others)}{Case numbers for Tick-borne encephalitis (Others)}
#' \item{Tick-borne encephalitis (Unknown)}{Case numbers for Tick-borne encephalitis (Unknown)}
#' \item{Eastern equine encephalitis (total)}{Case numbers for Eastern equine encephalitis (total)}
#' \item{Eastern equine encephalitis (Inside Japan)}{Case numbers for Eastern equine encephalitis (Inside Japan)}
#' \item{Eastern equine encephalitis (Others)}{Case numbers for Eastern equine encephalitis (Others)}
#' \item{Eastern equine encephalitis (Unknown)}{Case numbers for Eastern equine encephalitis (Unknown)}
#' \item{Glanders (total)}{Case numbers for Glanders (total)}
#' \item{Glanders (Inside Japan)}{Case numbers for Glanders (Inside Japan)}
#' \item{Glanders (Others)}{Case numbers for Glanders (Others)}
#' \item{Glanders (Unknown)}{Case numbers for Glanders (Unknown)}
#' \item{Venezuelan equine encephalitis (total)}{Case numbers for Venezuelan equine encephalitis (total)}
#' \item{Venezuelan equine encephalitis (Inside Japan)}{Case numbers for Venezuelan equine encephalitis (Inside Japan)}
#' \item{Venezuelan equine encephalitis (Others)}{Case numbers for Venezuelan equine encephalitis (Others)}
#' \item{Venezuelan equine encephalitis (Unknown)}{Case numbers for Venezuelan equine encephalitis (Unknown)}
#' \item{Hendra virus infection (total)}{Case numbers for Hendra virus infection (total)}
#' \item{Hendra virus infection (Inside Japan)}{Case numbers for Hendra virus infection (Inside Japan)}
#' \item{Hendra virus infection (Others)}{Case numbers for Hendra virus infection (Others)}
#' \item{Hendra virus infection (Unknown)}{Case numbers for Hendra virus infection (Unknown)}
#' \item{Rift valley fever (total)}{Case numbers for Rift valley fever (total)}
#' \item{Rift valley fever (Inside Japan)}{Case numbers for Rift valley fever (Inside Japan)}
#' \item{Rift valley fever (Others)}{Case numbers for Rift valley fever (Others)}
#' \item{Rift valley fever (Unknown)}{Case numbers for Rift valley fever (Unknown)}
#' \item{Melioidosis (total)}{Case numbers for Melioidosis (total)}
#' \item{Melioidosis (Inside Japan)}{Case numbers for Melioidosis (Inside Japan)}
#' \item{Melioidosis (Others)}{Case numbers for Melioidosis (Others)}
#' \item{Melioidosis (Unknown)}{Case numbers for Melioidosis (Unknown)}
#' \item{Rocky mountain spotted fever (total)}{Case numbers for Rocky mountain spotted fever (total)}
#' \item{Rocky mountain spotted fever (Inside Japan)}{Case numbers for Rocky mountain spotted fever (Inside Japan)}
#' \item{Rocky mountain spotted fever (Others)}{Case numbers for Rocky mountain spotted fever (Others)}
#' \item{Rocky mountain spotted fever (Unknown)}{Case numbers for Rocky mountain spotted fever (Unknown)}
#' \item{Avian influenza H5N1 (total)}{Case numbers for Avian influenza H5N1 (total)}
#' \item{Avian influenza H5N1 (Inside Japan)}{Case numbers for Avian influenza H5N1 (Inside Japan)}
#' \item{Avian influenza H5N1 (Others)}{Case numbers for Avian influenza H5N1 (Others)}
#' \item{Avian influenza H5N1 (Unknown)}{Case numbers for Avian influenza H5N1 (Unknown)}
#' \item{Avian influenza (exclud. Avian influenza H5N1) (total)}{Case numbers for Avian influenza (exclud. Avian influenza H5N1) (total)}
#' \item{Avian influenza (exclud. Avian influenza H5N1) (Inside Japan)}{Case numbers for Avian influenza (exclud. Avian influenza H5N1) (Inside Japan)}
#' \item{Avian influenza (exclud. Avian influenza H5N1) (Others)}{Case numbers for Avian influenza (exclud. Avian influenza H5N1) (Others)}
#' \item{Avian influenza (exclud. Avian influenza H5N1) (Unknown)}{Case numbers for Avian influenza (exclud. Avian influenza H5N1) (Unknown)}
#' \item{Rubella (total)}{Case numbers for Rubella (total)}
#' \item{Rubella (Inside Japan)}{Case numbers for Rubella (Inside Japan)}
#' \item{Rubella (Others)}{Case numbers for Rubella (Others)}
#' \item{Rubella (Unknown)}{Case numbers for Rubella (Unknown)}
#' \item{Measles (total)}{Case numbers for Measles (total)}
#' \item{Measles (Inside Japan)}{Case numbers for Measles (Inside Japan)}
#' \item{Measles (Others)}{Case numbers for Measles (Others)}
#' \item{Measles (Unknown)}{Case numbers for Measles (Unknown)}
#' \item{Pandemic influenza (A/H1N1) (total)}{Case numbers for Pandemic influenza (A/H1N1) (total)}
#' \item{Pandemic influenza (A/H1N1) (Inside Japan)}{Case numbers for Pandemic influenza (A/H1N1) (Inside Japan)}
#' \item{Pandemic influenza (A/H1N1) (Others)}{Case numbers for Pandemic influenza (A/H1N1) (Others)}
#' \item{Pandemic influenza (A/H1N1) (Unknown)}{Case numbers for Pandemic influenza (A/H1N1) (Unknown)}
#' \item{Chikungunya fever (total)}{Case numbers for Chikungunya fever (total)}
#' \item{Chikungunya fever (Inside Japan)}{Case numbers for Chikungunya fever (Inside Japan)}
#' \item{Chikungunya fever (Others)}{Case numbers for Chikungunya fever (Others)}
#' \item{Chikungunya fever (Unknown)}{Case numbers for Chikungunya fever (Unknown)}
#' \item{Avian influenza H7N9 (total)}{Case numbers for Avian influenza H7N9 (total)}
#' \item{Avian influenza H7N9 (Inside Japan)}{Case numbers for Avian influenza H7N9 (Inside Japan)}
#' \item{Avian influenza H7N9 (Others)}{Case numbers for Avian influenza H7N9 (Others)}
#' \item{Avian influenza H7N9 (Unknown)}{Case numbers for Avian influenza H7N9 (Unknown)}
#' \item{Severe Fever with Thrombocytopenia Syndrome (total)}{Case numbers for Severe Fever with Thrombocytopenia Syndrome (total)}
#' \item{Severe Fever with Thrombocytopenia Syndrome (Inside Japan)}{Case numbers for Severe Fever with Thrombocytopenia Syndrome (Inside Japan)}
#' \item{Severe Fever with Thrombocytopenia Syndrome (Others)}{Case numbers for Severe Fever with Thrombocytopenia Syndrome (Others)}
#' \item{Severe Fever with Thrombocytopenia Syndrome (Unknown)}{Case numbers for Severe Fever with Thrombocytopenia Syndrome (Unknown)}
#' \item{Invasive haemophilus influenzae infection (total)}{Case numbers for Invasive haemophilus influenzae infection (total)}
#' \item{Invasive haemophilus influenzae infection (Inside Japan)}{Case numbers for Invasive haemophilus influenzae infection (Inside Japan)}
#' \item{Invasive haemophilus influenzae infection (Others)}{Case numbers for Invasive haemophilus influenzae infection (Others)}
#' \item{Invasive haemophilus influenzae infection (Unknown)}{Case numbers for Invasive haemophilus influenzae infection (Unknown)}
#' \item{Invasive meningococcal infection (total)}{Case numbers for Invasive meningococcal infection (total)}
#' \item{Invasive meningococcal infection (Inside Japan)}{Case numbers for Invasive meningococcal infection (Inside Japan)}
#' \item{Invasive meningococcal infection (Others)}{Case numbers for Invasive meningococcal infection (Others)}
#' \item{Invasive meningococcal infection (Unknown)}{Case numbers for Invasive meningococcal infection (Unknown)}
#' \item{Invasive streptococcal pneumoniae infection (total)}{Case numbers for Invasive streptococcal pneumoniae infection (total)}
#' \item{Invasive streptococcal pneumoniae infection (Inside Japan)}{Case numbers for Invasive streptococcal pneumoniae infection (Inside Japan)}
#' \item{Invasive streptococcal pneumoniae infection (Others)}{Case numbers for Invasive streptococcal pneumoniae infection (Others)}
#' \item{Invasive streptococcal pneumoniae infection (Unknown)}{Case numbers for Invasive streptococcal pneumoniae infection (Unknown)}
#' \item{Middle East Respiratory Syndrome (MERS) (total)}{Case numbers for Middle East Respiratory Syndrome (MERS) (total)}
#' \item{Middle East Respiratory Syndrome (MERS) (Inside Japan)}{Case numbers for Middle East Respiratory Syndrome (MERS) (Inside Japan)}
#' \item{Middle East Respiratory Syndrome (MERS) (Others)}{Case numbers for Middle East Respiratory Syndrome (MERS) (Others)}
#' \item{Middle East Respiratory Syndrome (MERS) (Unknown)}{Case numbers for Middle East Respiratory Syndrome (MERS) (Unknown)}
#' \item{Carbapenem-resistant enterobacteriaceae infection (total)}{Case numbers for Carbapenem-resistant enterobacteriaceae infection (total)}
#' \item{Carbapenem-resistant enterobacteriaceae infection (Inside Japan)}{Case numbers for Carbapenem-resistant enterobacteriaceae infection (Inside Japan)}
#' \item{Carbapenem-resistant enterobacteriaceae infection (Others)}{Case numbers for Carbapenem-resistant enterobacteriaceae infection (Others)}
#' \item{Carbapenem-resistant enterobacteriaceae infection (Unknown)}{Case numbers for Carbapenem-resistant enterobacteriaceae infection (Unknown)}
#' \item{Varicella (limited to hospiltalized case) (total)}{Case numbers for Varicella (limited to hospiltalized case) (total)}
#' \item{Varicella (limited to hospiltalized case) (Inside Japan)}{Case numbers for Varicella (limited to hospiltalized case) (Inside Japan)}
#' \item{Varicella (limited to hospiltalized case) (Others)}{Case numbers for Varicella (limited to hospiltalized case) (Others)}
#' \item{Varicella (limited to hospiltalized case) (Unknown)}{Case numbers for Varicella (limited to hospiltalized case) (Unknown)}
#' \item{Disseminated cryptococcal infection (total)}{Case numbers for Disseminated cryptococcal infection (total)}
#' \item{Disseminated cryptococcal infection (Inside Japan)}{Case numbers for Disseminated cryptococcal infection (Inside Japan)}
#' \item{Disseminated cryptococcal infection (Others)}{Case numbers for Disseminated cryptococcal infection (Others)}
#' \item{Disseminated cryptococcal infection (Unknown)}{Case numbers for Disseminated cryptococcal infection (Unknown)}
#' \item{Multidrug-resistant Acinetobacter infection (total)}{Case numbers for Multidrug-resistant Acinetobacter infection (total)}
#' \item{Multidrug-resistant Acinetobacter infection (Inside Japan)}{Case numbers for Multidrug-resistant Acinetobacter infection (Inside Japan)}
#' \item{Multidrug-resistant Acinetobacter infection (Others)}{Case numbers for Multidrug-resistant Acinetobacter infection (Others)}
#' \item{Multidrug-resistant Acinetobacter infection (Unknown)}{Case numbers for Multidrug-resistant Acinetobacter infection (Unknown)}
#' \item{Zika virus infection (total)}{Case numbers for Zika virus infection (total)}
#' \item{Zika virus infection (Inside Japan)}{Case numbers for Zika virus infection (Inside Japan)}
#' \item{Zika virus infection (Others)}{Case numbers for Zika virus infection (Others)}
#' \item{Zika virus infection (Unknown)}{Case numbers for Zika virus infection (Unknown)}
#' \item{Acute Flaccid Paralysis (excluding Acute poliomyelitis) (total)}{Case numbers for Acute Flaccid Paralysis (excluding Acute poliomyelitis) (total)}
#' \item{Acute Flaccid Paralysis (excluding Acute poliomyelitis) (Inside Japan)}{Case numbers for Acute Flaccid Paralysis (excluding Acute poliomyelitis) (Inside Japan)}
#' \item{Acute Flaccid Paralysis (excluding Acute poliomyelitis) (Others)}{Case numbers for Acute Flaccid Paralysis (excluding Acute poliomyelitis) (Others)}
#' \item{Acute Flaccid Paralysis (excluding Acute poliomyelitis) (Unknown)}{Case numbers for Acute Flaccid Paralysis (excluding Acute poliomyelitis) (Unknown)}
#' \item{Pertussis (total)}{Case numbers for Pertussis (total)}
#' \item{Pertussis (Inside Japan)}{Case numbers for Pertussis (Inside Japan)}
#' \item{Pertussis (Others)}{Case numbers for Pertussis (Others)}
#' \item{Pertussis (Unknown)}{Case numbers for Pertussis (Unknown)}
#' \item{Mpox (total)}{Case numbers for Mpox (total)}
#' \item{Mpox (Inside Japan)}{Case numbers for Mpox (Inside Japan)}
#' \item{Mpox (Others)}{Case numbers for Mpox (Others)}
#' \item{Mpox (Unknown)}{Case numbers for Mpox (Unknown)}
#' \item{HIV/AIDS (total)}{Case numbers for HIV/AIDS (total)}
#' \item{HIV/AIDS (Inside Japan)}{Case numbers for HIV/AIDS (Inside Japan)}
#' \item{HIV/AIDS (Others)}{Case numbers for HIV/AIDS (Others)}
#' \item{HIV/AIDS (Unknown)}{Case numbers for HIV/AIDS (Unknown)}

#' }
#'
#' @source
#' The Japan Institute for Health Security (JIHS) (https://id-info.jihs.go.jp/index.html)
"place_prefecture"

#' Sex Prefecture Data
#'
#' @description
#' This dataset contains demographic information on sex by prefecture,
#' sourced from the Japan Institute for Health Security (JIHS).  The data ranges between
#' 1999 and 2022.
#'
#' @format A data frame with 59424 rows and 318 columns.
#' \describe{
#' \item{prefecture}{Case numbers for prefecture}
#' \item{year}{Case numbers for year}
#' \item{week}{Case numbers for week}
#' \item{Ebola hemorrhagic fever (total)}{Case numbers for Ebola hemorrhagic fever (total)}
#' \item{Ebola hemorrhagic fever (male)}{Case numbers for Ebola hemorrhagic fever (male)}
#' \item{Ebola hemorrhagic fever (female)}{Case numbers for Ebola hemorrhagic fever (female)}
#' \item{Crimean-Congo hemorrhagic fever (total)}{Case numbers for Crimean-Congo hemorrhagic fever (total)}
#' \item{Crimean-Congo hemorrhagic fever (male)}{Case numbers for Crimean-Congo hemorrhagic fever (male)}
#' \item{Crimean-Congo hemorrhagic fever (female)}{Case numbers for Crimean-Congo hemorrhagic fever (female)}
#' \item{Plague (total)}{Case numbers for Plague (total)}
#' \item{Plague (male)}{Case numbers for Plague (male)}
#' \item{Plague (female)}{Case numbers for Plague (female)}
#' \item{Marburg disease (total)}{Case numbers for Marburg disease (total)}
#' \item{Marburg disease (male)}{Case numbers for Marburg disease (male)}
#' \item{Marburg disease (female)}{Case numbers for Marburg disease (female)}
#' \item{Lassa fever (total)}{Case numbers for Lassa fever (total)}
#' \item{Lassa fever (male)}{Case numbers for Lassa fever (male)}
#' \item{Lassa fever (female)}{Case numbers for Lassa fever (female)}
#' \item{Cholera (total)}{Case numbers for Cholera (total)}
#' \item{Cholera (male)}{Case numbers for Cholera (male)}
#' \item{Cholera (female)}{Case numbers for Cholera (female)}
#' \item{Shigellosis (total)}{Case numbers for Shigellosis (total)}
#' \item{Shigellosis (male)}{Case numbers for Shigellosis (male)}
#' \item{Shigellosis (female)}{Case numbers for Shigellosis (female)}
#' \item{Typhoid fever (total)}{Case numbers for Typhoid fever (total)}
#' \item{Typhoid fever (male)}{Case numbers for Typhoid fever (male)}
#' \item{Typhoid fever (female)}{Case numbers for Typhoid fever (female)}
#' \item{Paratyphoid fever (total)}{Case numbers for Paratyphoid fever (total)}
#' \item{Paratyphoid fever (male)}{Case numbers for Paratyphoid fever (male)}
#' \item{Paratyphoid fever (female)}{Case numbers for Paratyphoid fever (female)}
#' \item{Acute poliomyelitis (total)}{Case numbers for Acute poliomyelitis (total)}
#' \item{Acute poliomyelitis (male)}{Case numbers for Acute poliomyelitis (male)}
#' \item{Acute poliomyelitis (female)}{Case numbers for Acute poliomyelitis (female)}
#' \item{Diphtheria (total)}{Case numbers for Diphtheria (total)}
#' \item{Diphtheria (male)}{Case numbers for Diphtheria (male)}
#' \item{Diphtheria (female)}{Case numbers for Diphtheria (female)}
#' \item{Enterohemorrhagic E. coli infection (total)}{Case numbers for Enterohemorrhagic E. coli infection (total)}
#' \item{Enterohemorrhagic E. coli infection (male)}{Case numbers for Enterohemorrhagic E. coli infection (male)}
#' \item{Enterohemorrhagic E. coli infection (female)}{Case numbers for Enterohemorrhagic E. coli infection (female)}
#' \item{Amebiasis (total)}{Case numbers for Amebiasis (total)}
#' \item{Amebiasis (male)}{Case numbers for Amebiasis (male)}
#' \item{Amebiasis (female)}{Case numbers for Amebiasis (female)}
#' \item{Echinococcosis (total)}{Case numbers for Echinococcosis (total)}
#' \item{Echinococcosis (male)}{Case numbers for Echinococcosis (male)}
#' \item{Echinococcosis (female)}{Case numbers for Echinococcosis (female)}
#' \item{Yellow fever (total)}{Case numbers for Yellow fever (total)}
#' \item{Yellow fever (male)}{Case numbers for Yellow fever (male)}
#' \item{Yellow fever (female)}{Case numbers for Yellow fever (female)}
#' \item{Psittacosis (total)}{Case numbers for Psittacosis (total)}
#' \item{Psittacosis (male)}{Case numbers for Psittacosis (male)}
#' \item{Psittacosis (female)}{Case numbers for Psittacosis (female)}
#' \item{Relapsing fever (total)}{Case numbers for Relapsing fever (total)}
#' \item{Relapsing fever (male)}{Case numbers for Relapsing fever (male)}
#' \item{Relapsing fever (female)}{Case numbers for Relapsing fever (female)}
#' \item{Acute viral hepatitis (total)}{Case numbers for Acute viral hepatitis (total)}
#' \item{Acute viral hepatitis (male)}{Case numbers for Acute viral hepatitis (male)}
#' \item{Acute viral hepatitis (female)}{Case numbers for Acute viral hepatitis (female)}
#' \item{Q fever (total)}{Case numbers for Q fever (total)}
#' \item{Q fever (male)}{Case numbers for Q fever (male)}
#' \item{Q fever (female)}{Case numbers for Q fever (female)}
#' \item{Rabies (total)}{Case numbers for Rabies (total)}
#' \item{Rabies (male)}{Case numbers for Rabies (male)}
#' \item{Rabies (female)}{Case numbers for Rabies (female)}
#' \item{Cryptosporidiosis (total)}{Case numbers for Cryptosporidiosis (total)}
#' \item{Cryptosporidiosis (male)}{Case numbers for Cryptosporidiosis (male)}
#' \item{Cryptosporidiosis (female)}{Case numbers for Cryptosporidiosis (female)}
#' \item{Creutzfeldt-Jakob disease (total)}{Case numbers for Creutzfeldt-Jakob disease (total)}
#' \item{Creutzfeldt-Jakob disease (male)}{Case numbers for Creutzfeldt-Jakob disease (male)}
#' \item{Creutzfeldt-Jakob disease (female)}{Case numbers for Creutzfeldt-Jakob disease (female)}
#' \item{Severe invasive streptococcal infections (total)}{Case numbers for Severe invasive streptococcal infections (total)}
#' \item{Severe invasive streptococcal infections (male)}{Case numbers for Severe invasive streptococcal infections (male)}
#' \item{Severe invasive streptococcal infections (female)}{Case numbers for Severe invasive streptococcal infections (female)}
#' \item{AIDS (total)}{Case numbers for AIDS (total)}
#' \item{AIDS (male)}{Case numbers for AIDS (male)}
#' \item{AIDS (female)}{Case numbers for AIDS (female)}
#' \item{Coccidioidomycosis (total)}{Case numbers for Coccidioidomycosis (total)}
#' \item{Coccidioidomycosis (male)}{Case numbers for Coccidioidomycosis (male)}
#' \item{Coccidioidomycosis (female)}{Case numbers for Coccidioidomycosis (female)}
#' \item{Giardiasis (total)}{Case numbers for Giardiasis (total)}
#' \item{Giardiasis (male)}{Case numbers for Giardiasis (male)}
#' \item{Giardiasis (female)}{Case numbers for Giardiasis (female)}
#' \item{Hemorrhagic fever with renal syndrome (total)}{Case numbers for Hemorrhagic fever with renal syndrome (total)}
#' \item{Hemorrhagic fever with renal syndrome (male)}{Case numbers for Hemorrhagic fever with renal syndrome (male)}
#' \item{Hemorrhagic fever with renal syndrome (female)}{Case numbers for Hemorrhagic fever with renal syndrome (female)}
#' \item{Meningococcal meningitis (total)}{Case numbers for Meningococcal meningitis (total)}
#' \item{Meningococcal meningitis (male)}{Case numbers for Meningococcal meningitis (male)}
#' \item{Meningococcal meningitis (female)}{Case numbers for Meningococcal meningitis (female)}
#' \item{Congenital rubella syndrome (total)}{Case numbers for Congenital rubella syndrome (total)}
#' \item{Congenital rubella syndrome (male)}{Case numbers for Congenital rubella syndrome (male)}
#' \item{Congenital rubella syndrome (female)}{Case numbers for Congenital rubella syndrome (female)}
#' \item{Anthrax (total)}{Case numbers for Anthrax (total)}
#' \item{Anthrax (male)}{Case numbers for Anthrax (male)}
#' \item{Anthrax (female)}{Case numbers for Anthrax (female)}
#' \item{Tsutsugamushi disease (total)}{Case numbers for Tsutsugamushi disease (total)}
#' \item{Tsutsugamushi disease (male)}{Case numbers for Tsutsugamushi disease (male)}
#' \item{Tsutsugamushi disease (female)}{Case numbers for Tsutsugamushi disease (female)}
#' \item{Dengue fever (total)}{Case numbers for Dengue fever (total)}
#' \item{Dengue fever (male)}{Case numbers for Dengue fever (male)}
#' \item{Dengue fever (female)}{Case numbers for Dengue fever (female)}
#' \item{Japanese spotted fever (total)}{Case numbers for Japanese spotted fever (total)}
#' \item{Japanese spotted fever (male)}{Case numbers for Japanese spotted fever (male)}
#' \item{Japanese spotted fever (female)}{Case numbers for Japanese spotted fever (female)}
#' \item{Japanese encephalitis (total)}{Case numbers for Japanese encephalitis (total)}
#' \item{Japanese encephalitis (male)}{Case numbers for Japanese encephalitis (male)}
#' \item{Japanese encephalitis (female)}{Case numbers for Japanese encephalitis (female)}
#' \item{Infant botulism (total)}{Case numbers for Infant botulism (total)}
#' \item{Infant botulism (male)}{Case numbers for Infant botulism (male)}
#' \item{Infant botulism (female)}{Case numbers for Infant botulism (female)}
#' \item{Syphilis (total)}{Case numbers for Syphilis (total)}
#' \item{Syphilis (male)}{Case numbers for Syphilis (male)}
#' \item{Syphilis (female)}{Case numbers for Syphilis (female)}
#' \item{Tetanus (total)}{Case numbers for Tetanus (total)}
#' \item{Tetanus (male)}{Case numbers for Tetanus (male)}
#' \item{Tetanus (female)}{Case numbers for Tetanus (female)}
#' \item{VRE infection (total)}{Case numbers for VRE infection (total)}
#' \item{VRE infection (male)}{Case numbers for VRE infection (male)}
#' \item{VRE infection (female)}{Case numbers for VRE infection (female)}
#' \item{Hantavirus pulmonary syndrome (total)}{Case numbers for Hantavirus pulmonary syndrome (total)}
#' \item{Hantavirus pulmonary syndrome (male)}{Case numbers for Hantavirus pulmonary syndrome (male)}
#' \item{Hantavirus pulmonary syndrome (female)}{Case numbers for Hantavirus pulmonary syndrome (female)}
#' \item{B virus disease (total)}{Case numbers for B virus disease (total)}
#' \item{B virus disease (male)}{Case numbers for B virus disease (male)}
#' \item{B virus disease (female)}{Case numbers for B virus disease (female)}
#' \item{Brucellosis (total)}{Case numbers for Brucellosis (total)}
#' \item{Brucellosis (male)}{Case numbers for Brucellosis (male)}
#' \item{Brucellosis (female)}{Case numbers for Brucellosis (female)}
#' \item{Epidemic typhus (total)}{Case numbers for Epidemic typhus (total)}
#' \item{Epidemic typhus (male)}{Case numbers for Epidemic typhus (male)}
#' \item{Epidemic typhus (female)}{Case numbers for Epidemic typhus (female)}
#' \item{Malaria (total)}{Case numbers for Malaria (total)}
#' \item{Malaria (male)}{Case numbers for Malaria (male)}
#' \item{Malaria (female)}{Case numbers for Malaria (female)}
#' \item{Lyme disease (total)}{Case numbers for Lyme disease (total)}
#' \item{Lyme disease (male)}{Case numbers for Lyme disease (male)}
#' \item{Lyme disease (female)}{Case numbers for Lyme disease (female)}
#' \item{Legionellosis (total)}{Case numbers for Legionellosis (total)}
#' \item{Legionellosis (male)}{Case numbers for Legionellosis (male)}
#' \item{Legionellosis (female)}{Case numbers for Legionellosis (female)}
#' \item{Poliomyelitis (total)}{Case numbers for Poliomyelitis (total)}
#' \item{Poliomyelitis (male)}{Case numbers for Poliomyelitis (male)}
#' \item{Poliomyelitis (female)}{Case numbers for Poliomyelitis (female)}
#' \item{Scrub typhus (total)}{Case numbers for Scrub typhus (total)}
#' \item{Scrub typhus (male)}{Case numbers for Scrub typhus (male)}
#' \item{Scrub typhus (female)}{Case numbers for Scrub typhus (female)}
#' \item{Epidemic louse-borne typhus (total)}{Case numbers for Epidemic louse-borne typhus (total)}
#' \item{Epidemic louse-borne typhus (male)}{Case numbers for Epidemic louse-borne typhus (male)}
#' \item{Epidemic louse-borne typhus (female)}{Case numbers for Epidemic louse-borne typhus (female)}
#' \item{Severe Acute Respiratory Syndrome (SARS) (total)}{Case numbers for Severe Acute Respiratory Syndrome (SARS) (total)}
#' \item{Severe Acute Respiratory Syndrome (SARS) (male)}{Case numbers for Severe Acute Respiratory Syndrome (SARS) (male)}
#' \item{Severe Acute Respiratory Syndrome (SARS) (female)}{Case numbers for Severe Acute Respiratory Syndrome (SARS) (female)}
#' \item{Smallpox (total)}{Case numbers for Smallpox (total)}
#' \item{Smallpox (male)}{Case numbers for Smallpox (male)}
#' \item{Smallpox (female)}{Case numbers for Smallpox (female)}
#' \item{Enterohemorrhagic Escherichia coli infection (total)}{Case numbers for Enterohemorrhagic Escherichia coli infection (total)}
#' \item{Enterohemorrhagic Escherichia coli infection (male)}{Case numbers for Enterohemorrhagic Escherichia coli infection (male)}
#' \item{Enterohemorrhagic Escherichia coli infection (female)}{Case numbers for Enterohemorrhagic Escherichia coli infection (female)}
#' \item{Hepatitis E (total)}{Case numbers for Hepatitis E (total)}
#' \item{Hepatitis E (male)}{Case numbers for Hepatitis E (male)}
#' \item{Hepatitis E (female)}{Case numbers for Hepatitis E (female)}
#' \item{West Nile fever (including West Nile encephalitis) (total)}{Case numbers for West Nile fever (including West Nile encephalitis) (total)}
#' \item{West Nile fever (including West Nile encephalitis) (male)}{Case numbers for West Nile fever (including West Nile encephalitis) (male)}
#' \item{West Nile fever (including West Nile encephalitis) (female)}{Case numbers for West Nile fever (including West Nile encephalitis) (female)}
#' \item{Hepatitis A (total)}{Case numbers for Hepatitis A (total)}
#' \item{Hepatitis A (male)}{Case numbers for Hepatitis A (male)}
#' \item{Hepatitis A (female)}{Case numbers for Hepatitis A (female)}
#' \item{Avian influenza virus infection (total)}{Case numbers for Avian influenza virus infection (total)}
#' \item{Avian influenza virus infection (male)}{Case numbers for Avian influenza virus infection (male)}
#' \item{Avian influenza virus infection (female)}{Case numbers for Avian influenza virus infection (female)}
#' \item{Monkeypox (total)}{Case numbers for Monkeypox (total)}
#' \item{Monkeypox (male)}{Case numbers for Monkeypox (male)}
#' \item{Monkeypox (female)}{Case numbers for Monkeypox (female)}
#' \item{Scrub typhus (Tsutsugamushi disease) (total)}{Case numbers for Scrub typhus (Tsutsugamushi disease) (total)}
#' \item{Scrub typhus (Tsutsugamushi disease) (male)}{Case numbers for Scrub typhus (Tsutsugamushi disease) (male)}
#' \item{Scrub typhus (Tsutsugamushi disease) (female)}{Case numbers for Scrub typhus (Tsutsugamushi disease) (female)}
#' \item{Nipah virus infection (total)}{Case numbers for Nipah virus infection (total)}
#' \item{Nipah virus infection (male)}{Case numbers for Nipah virus infection (male)}
#' \item{Nipah virus infection (female)}{Case numbers for Nipah virus infection (female)}
#' \item{Herpes B virus infection (total)}{Case numbers for Herpes B virus infection (total)}
#' \item{Herpes B virus infection (male)}{Case numbers for Herpes B virus infection (male)}
#' \item{Herpes B virus infection (female)}{Case numbers for Herpes B virus infection (female)}
#' \item{Botulism (total)}{Case numbers for Botulism (total)}
#' \item{Botulism (male)}{Case numbers for Botulism (male)}
#' \item{Botulism (female)}{Case numbers for Botulism (female)}
#' \item{Tularemia (total)}{Case numbers for Tularemia (total)}
#' \item{Tularemia (male)}{Case numbers for Tularemia (male)}
#' \item{Tularemia (female)}{Case numbers for Tularemia (female)}
#' \item{Lyssavirus infection (excluding rabies) (total)}{Case numbers for Lyssavirus infection (excluding rabies) (total)}
#' \item{Lyssavirus infection (excluding rabies) (male)}{Case numbers for Lyssavirus infection (excluding rabies) (male)}
#' \item{Lyssavirus infection (excluding rabies) (female)}{Case numbers for Lyssavirus infection (excluding rabies) (female)}
#' \item{Leptospirosis (total)}{Case numbers for Leptospirosis (total)}
#' \item{Leptospirosis (male)}{Case numbers for Leptospirosis (male)}
#' \item{Leptospirosis (female)}{Case numbers for Leptospirosis (female)}
#' \item{Viral hepatitis (excluding hepatitis A and E) (total)}{Case numbers for Viral hepatitis (excluding hepatitis A and E) (total)}
#' \item{Viral hepatitis (excluding hepatitis A and E) (male)}{Case numbers for Viral hepatitis (excluding hepatitis A and E) (male)}
#' \item{Viral hepatitis (excluding hepatitis A and E) (female)}{Case numbers for Viral hepatitis (excluding hepatitis A and E) (female)}
#' \item{Acute encephalitis (excluding JE and WNE) (total)}{Case numbers for Acute encephalitis (excluding JE and WNE) (total)}
#' \item{Acute encephalitis (excluding JE and WNE) (male)}{Case numbers for Acute encephalitis (excluding JE and WNE) (male)}
#' \item{Acute encephalitis (excluding JE and WNE) (female)}{Case numbers for Acute encephalitis (excluding JE and WNE) (female)}
#' \item{Severe invasive streptococcal infections (TSLS) (total)}{Case numbers for Severe invasive streptococcal infections (TSLS) (total)}
#' \item{Severe invasive streptococcal infections (TSLS) (male)}{Case numbers for Severe invasive streptococcal infections (TSLS) (male)}
#' \item{Severe invasive streptococcal infections (TSLS) (female)}{Case numbers for Severe invasive streptococcal infections (TSLS) (female)}
#' \item{Acquired immunodeficiency syndrome (AIDS) (total)}{Case numbers for Acquired immunodeficiency syndrome (AIDS) (total)}
#' \item{Acquired immunodeficiency syndrome (AIDS) (male)}{Case numbers for Acquired immunodeficiency syndrome (AIDS) (male)}
#' \item{Acquired immunodeficiency syndrome (AIDS) (female)}{Case numbers for Acquired immunodeficiency syndrome (AIDS) (female)}
#' \item{Vancomycin-resistant S. aureus infection (total)}{Case numbers for Vancomycin-resistant S. aureus infection (total)}
#' \item{Vancomycin-resistant S. aureus infection (male)}{Case numbers for Vancomycin-resistant S. aureus infection (male)}
#' \item{Vancomycin-resistant S. aureus infection (female)}{Case numbers for Vancomycin-resistant S. aureus infection (female)}
#' \item{Vancomycin-resistant Enterococcus infection (total)}{Case numbers for Vancomycin-resistant Enterococcus infection (total)}
#' \item{Vancomycin-resistant Enterococcus infection (male)}{Case numbers for Vancomycin-resistant Enterococcus infection (male)}
#' \item{Vancomycin-resistant Enterococcus infection (female)}{Case numbers for Vancomycin-resistant Enterococcus infection (female)}
#' \item{South American hemorrhagic fever (total)}{Case numbers for South American hemorrhagic fever (total)}
#' \item{South American hemorrhagic fever (male)}{Case numbers for South American hemorrhagic fever (male)}
#' \item{South American hemorrhagic fever (female)}{Case numbers for South American hemorrhagic fever (female)}
#' \item{Tuberculosis (total)}{Case numbers for Tuberculosis (total)}
#' \item{Tuberculosis (male)}{Case numbers for Tuberculosis (male)}
#' \item{Tuberculosis (female)}{Case numbers for Tuberculosis (female)}
#' \item{West Nile fever (total)}{Case numbers for West Nile fever (total)}
#' \item{West Nile fever (male)}{Case numbers for West Nile fever (male)}
#' \item{West Nile fever (female)}{Case numbers for West Nile fever (female)}
#' \item{Omsk hemorrhagic fever (total)}{Case numbers for Omsk hemorrhagic fever (total)}
#' \item{Omsk hemorrhagic fever (male)}{Case numbers for Omsk hemorrhagic fever (male)}
#' \item{Omsk hemorrhagic fever (female)}{Case numbers for Omsk hemorrhagic fever (female)}
#' \item{Kyasanur forest disease (total)}{Case numbers for Kyasanur forest disease (total)}
#' \item{Kyasanur forest disease (male)}{Case numbers for Kyasanur forest disease (male)}
#' \item{Kyasanur forest disease (female)}{Case numbers for Kyasanur forest disease (female)}
#' \item{Western equine encephalitis (total)}{Case numbers for Western equine encephalitis (total)}
#' \item{Western equine encephalitis (male)}{Case numbers for Western equine encephalitis (male)}
#' \item{Western equine encephalitis (female)}{Case numbers for Western equine encephalitis (female)}
#' \item{Tick-borne encephalitis (total)}{Case numbers for Tick-borne encephalitis (total)}
#' \item{Tick-borne encephalitis (male)}{Case numbers for Tick-borne encephalitis (male)}
#' \item{Tick-borne encephalitis (female)}{Case numbers for Tick-borne encephalitis (female)}
#' \item{Eastern equine encephalitis (total)}{Case numbers for Eastern equine encephalitis (total)}
#' \item{Eastern equine encephalitis (male)}{Case numbers for Eastern equine encephalitis (male)}
#' \item{Eastern equine encephalitis (female)}{Case numbers for Eastern equine encephalitis (female)}
#' \item{Glanders (total)}{Case numbers for Glanders (total)}
#' \item{Glanders (male)}{Case numbers for Glanders (male)}
#' \item{Glanders (female)}{Case numbers for Glanders (female)}
#' \item{Venezuelan equine encephalitis (total)}{Case numbers for Venezuelan equine encephalitis (total)}
#' \item{Venezuelan equine encephalitis (male)}{Case numbers for Venezuelan equine encephalitis (male)}
#' \item{Venezuelan equine encephalitis (female)}{Case numbers for Venezuelan equine encephalitis (female)}
#' \item{Hendra virus infection (total)}{Case numbers for Hendra virus infection (total)}
#' \item{Hendra virus infection (male)}{Case numbers for Hendra virus infection (male)}
#' \item{Hendra virus infection (female)}{Case numbers for Hendra virus infection (female)}
#' \item{Rift valley fever (total)}{Case numbers for Rift valley fever (total)}
#' \item{Rift valley fever (male)}{Case numbers for Rift valley fever (male)}
#' \item{Rift valley fever (female)}{Case numbers for Rift valley fever (female)}
#' \item{Melioidosis (total)}{Case numbers for Melioidosis (total)}
#' \item{Melioidosis (male)}{Case numbers for Melioidosis (male)}
#' \item{Melioidosis (female)}{Case numbers for Melioidosis (female)}
#' \item{Rocky mountain spotted fever (total)}{Case numbers for Rocky mountain spotted fever (total)}
#' \item{Rocky mountain spotted fever (male)}{Case numbers for Rocky mountain spotted fever (male)}
#' \item{Rocky mountain spotted fever (female)}{Case numbers for Rocky mountain spotted fever (female)}
#' \item{Avian influenza H5N1 (total)}{Case numbers for Avian influenza H5N1 (total)}
#' \item{Avian influenza H5N1 (male)}{Case numbers for Avian influenza H5N1 (male)}
#' \item{Avian influenza H5N1 (female)}{Case numbers for Avian influenza H5N1 (female)}
#' \item{Avian influenza (exclud. Avian influenza H5N1) (total)}{Case numbers for Avian influenza (exclud. Avian influenza H5N1) (total)}
#' \item{Avian influenza (exclud. Avian influenza H5N1) (male)}{Case numbers for Avian influenza (exclud. Avian influenza H5N1) (male)}
#' \item{Avian influenza (exclud. Avian influenza H5N1) (female)}{Case numbers for Avian influenza (exclud. Avian influenza H5N1) (female)}
#' \item{Rubella (total)}{Case numbers for Rubella (total)}
#' \item{Rubella (male)}{Case numbers for Rubella (male)}
#' \item{Rubella (female)}{Case numbers for Rubella (female)}
#' \item{Measles (total)}{Case numbers for Measles (total)}
#' \item{Measles (male)}{Case numbers for Measles (male)}
#' \item{Measles (female)}{Case numbers for Measles (female)}
#' \item{Pandemic influenza (A/H1N1) (total)}{Case numbers for Pandemic influenza (A/H1N1) (total)}
#' \item{Pandemic influenza (A/H1N1) (male)}{Case numbers for Pandemic influenza (A/H1N1) (male)}
#' \item{Pandemic influenza (A/H1N1) (female)}{Case numbers for Pandemic influenza (A/H1N1) (female)}
#' \item{Chikungunya fever (total)}{Case numbers for Chikungunya fever (total)}
#' \item{Chikungunya fever (male)}{Case numbers for Chikungunya fever (male)}
#' \item{Chikungunya fever (female)}{Case numbers for Chikungunya fever (female)}
#' \item{Avian influenza H7N9 (total)}{Case numbers for Avian influenza H7N9 (total)}
#' \item{Avian influenza H7N9 (male)}{Case numbers for Avian influenza H7N9 (male)}
#' \item{Avian influenza H7N9 (female)}{Case numbers for Avian influenza H7N9 (female)}
#' \item{Severe Fever with Thrombocytopenia Syndrome (total)}{Case numbers for Severe Fever with Thrombocytopenia Syndrome (total)}
#' \item{Severe Fever with Thrombocytopenia Syndrome (male)}{Case numbers for Severe Fever with Thrombocytopenia Syndrome (male)}
#' \item{Severe Fever with Thrombocytopenia Syndrome (female)}{Case numbers for Severe Fever with Thrombocytopenia Syndrome (female)}
#' \item{Invasive haemophilus influenzae infection (total)}{Case numbers for Invasive haemophilus influenzae infection (total)}
#' \item{Invasive haemophilus influenzae infection (male)}{Case numbers for Invasive haemophilus influenzae infection (male)}
#' \item{Invasive haemophilus influenzae infection (female)}{Case numbers for Invasive haemophilus influenzae infection (female)}
#' \item{Invasive meningococcal infection (total)}{Case numbers for Invasive meningococcal infection (total)}
#' \item{Invasive meningococcal infection (male)}{Case numbers for Invasive meningococcal infection (male)}
#' \item{Invasive meningococcal infection (female)}{Case numbers for Invasive meningococcal infection (female)}
#' \item{Invasive streptococcal pneumoniae infection (total)}{Case numbers for Invasive streptococcal pneumoniae infection (total)}
#' \item{Invasive streptococcal pneumoniae infection (male)}{Case numbers for Invasive streptococcal pneumoniae infection (male)}
#' \item{Invasive streptococcal pneumoniae infection (female)}{Case numbers for Invasive streptococcal pneumoniae infection (female)}
#' \item{Middle East Respiratory Syndrome (MERS) (total)}{Case numbers for Middle East Respiratory Syndrome (MERS) (total)}
#' \item{Middle East Respiratory Syndrome (MERS) (male)}{Case numbers for Middle East Respiratory Syndrome (MERS) (male)}
#' \item{Middle East Respiratory Syndrome (MERS) (female)}{Case numbers for Middle East Respiratory Syndrome (MERS) (female)}
#' \item{Carbapenem-resistant enterobacteriaceae infection (total)}{Case numbers for Carbapenem-resistant enterobacteriaceae infection (total)}
#' \item{Carbapenem-resistant enterobacteriaceae infection (male)}{Case numbers for Carbapenem-resistant enterobacteriaceae infection (male)}
#' \item{Carbapenem-resistant enterobacteriaceae infection (female)}{Case numbers for Carbapenem-resistant enterobacteriaceae infection (female)}
#' \item{Varicella (limited to hospiltalized case) (total)}{Case numbers for Varicella (limited to hospiltalized case) (total)}
#' \item{Varicella (limited to hospiltalized case) (male)}{Case numbers for Varicella (limited to hospiltalized case) (male)}
#' \item{Varicella (limited to hospiltalized case) (female)}{Case numbers for Varicella (limited to hospiltalized case) (female)}
#' \item{Disseminated cryptococcal infection (total)}{Case numbers for Disseminated cryptococcal infection (total)}
#' \item{Disseminated cryptococcal infection (male)}{Case numbers for Disseminated cryptococcal infection (male)}
#' \item{Disseminated cryptococcal infection (female)}{Case numbers for Disseminated cryptococcal infection (female)}
#' \item{Multidrug-resistant Acinetobacter infection (total)}{Case numbers for Multidrug-resistant Acinetobacter infection (total)}
#' \item{Multidrug-resistant Acinetobacter infection (male)}{Case numbers for Multidrug-resistant Acinetobacter infection (male)}
#' \item{Multidrug-resistant Acinetobacter infection (female)}{Case numbers for Multidrug-resistant Acinetobacter infection (female)}
#' \item{Zika virus infection (total)}{Case numbers for Zika virus infection (total)}
#' \item{Zika virus infection (male)}{Case numbers for Zika virus infection (male)}
#' \item{Zika virus infection (female)}{Case numbers for Zika virus infection (female)}
#' \item{Acute Flaccid Paralysis (excluding Acute poliomyelitis) (total)}{Case numbers for Acute Flaccid Paralysis (excluding Acute poliomyelitis) (total)}
#' \item{Acute Flaccid Paralysis (excluding Acute poliomyelitis) (male)}{Case numbers for Acute Flaccid Paralysis (excluding Acute poliomyelitis) (male)}
#' \item{Acute Flaccid Paralysis (excluding Acute poliomyelitis) (female)}{Case numbers for Acute Flaccid Paralysis (excluding Acute poliomyelitis) (female)}
#' \item{Pertussis (total)}{Case numbers for Pertussis (total)}
#' \item{Pertussis (male)}{Case numbers for Pertussis (male)}
#' \item{Pertussis (female)}{Case numbers for Pertussis (female)}
#' \item{Mpox (total)}{Case numbers for Mpox (total)}
#' \item{Mpox (male)}{Case numbers for Mpox (male)}
#' \item{Mpox (female)}{Case numbers for Mpox (female)}
#' \item{Carbapenem-resistant Enterobacterales infection (total)}{Case numbers for Carbapenem-resistant Enterobacterales infection (total)}
#' \item{Carbapenem-resistant Enterobacterales infection (male)}{Case numbers for Carbapenem-resistant Enterobacterales infection (male)}
#' \item{Carbapenem-resistant Enterobacterales infection (female)}{Case numbers for Carbapenem-resistant Enterobacterales infection (female)}
#' \item{HIV/AIDS (total)}{Case numbers for HIV/AIDS (total)}
#' \item{HIV/AIDS (male)}{Case numbers for HIV/AIDS (male)}
#' \item{HIV/AIDS (female)}{Case numbers for HIV/AIDS (female)}
#' }
#'
#' @source
#' The Japan Institute for Health Security (JIHS) (https://id-info.jihs.go.jp/index.html)
"sex_prefecture"


#' Bullet report Data
#'
#' @description
#' This data set contains demographic information on bullet report based on prefecture,
#' sourced from The Japan Institute for Health Security (JIHS).The specific date range
#' provided are subject to updates.
#'
#' @format A data frame with 5616 rows and 181 columns.
#' \describe{
#' \item{prefecture}{Case numbers for prefecture}
#' \item{year}{Case numbers for year}
#' \item{week}{Case numbers for week}
#' \item{Ebola hemorrhagic fever (weekly)}{Case numbers for Ebola hemorrhagic fever (weekly)}
#' \item{Ebola hemorrhagic fever (cumulative)}{Case numbers for Ebola hemorrhagic fever (cumulative)}
#' \item{Crimean-Congo hemorrhagic fever (weekly)}{Case numbers for Crimean-Congo hemorrhagic fever (weekly)}
#' \item{Crimean-Congo hemorrhagic fever (cumulative)}{Case numbers for Crimean-Congo hemorrhagic fever (cumulative)}
#' \item{Smallpox (weekly)}{Case numbers for Smallpox (weekly)}
#' \item{Smallpox (cumulative)}{Case numbers for Smallpox (cumulative)}
#' \item{South American hemorrhagic fever (weekly)}{Case numbers for South American hemorrhagic fever (weekly)}
#' \item{South American hemorrhagic fever (cumulative)}{Case numbers for South American hemorrhagic fever (cumulative)}
#' \item{Plague (weekly)}{Case numbers for Plague (weekly)}
#' \item{Plague (cumulative)}{Case numbers for Plague (cumulative)}
#' \item{Marburg disease (weekly)}{Case numbers for Marburg disease (weekly)}
#' \item{Marburg disease (cumulative)}{Case numbers for Marburg disease (cumulative)}
#' \item{Lassa fever (weekly)}{Case numbers for Lassa fever (weekly)}
#' \item{Lassa fever (cumulative)}{Case numbers for Lassa fever (cumulative)}
#' \item{Acute poliomyelitis (weekly)}{Case numbers for Acute poliomyelitis (weekly)}
#' \item{Acute poliomyelitis (cumulative)}{Case numbers for Acute poliomyelitis (cumulative)}
#' \item{Tuberculosis (weekly)}{Case numbers for Tuberculosis (weekly)}
#' \item{Tuberculosis (cumulative)}{Case numbers for Tuberculosis (cumulative)}
#' \item{Diphtheria (weekly)}{Case numbers for Diphtheria (weekly)}
#' \item{Diphtheria (cumulative)}{Case numbers for Diphtheria (cumulative)}
#' \item{Severe Acute Respiratory Syndrome (SARS) (weekly)}{Case numbers for Severe Acute Respiratory Syndrome (SARS) (weekly)}
#' \item{Severe Acute Respiratory Syndrome (SARS) (cumulative)}{Case numbers for Severe Acute Respiratory Syndrome (SARS) (cumulative)}
#' \item{Middle East Respiratory Syndrome Coronavirus (weekly)}{Case numbers for Middle East Respiratory Syndrome Coronavirus (weekly)}
#' \item{Middle East Respiratory Syndrome Coronavirus (cumulative)}{Case numbers for Middle East Respiratory Syndrome Coronavirus (cumulative)}
#' \item{Avian influenza H5N1 (weekly)}{Case numbers for Avian influenza H5N1 (weekly)}
#' \item{Avian influenza H5N1 (cumulative)}{Case numbers for Avian influenza H5N1 (cumulative)}
#' \item{Avian influenza H7N9 (weekly)}{Case numbers for Avian influenza H7N9 (weekly)}
#' \item{Avian influenza H7N9 (cumulative)}{Case numbers for Avian influenza H7N9 (cumulative)}
#' \item{Cholera (weekly)}{Case numbers for Cholera (weekly)}
#' \item{Cholera (cumulative)}{Case numbers for Cholera (cumulative)}
#' \item{Shigellosis (weekly)}{Case numbers for Shigellosis (weekly)}
#' \item{Shigellosis (cumulative)}{Case numbers for Shigellosis (cumulative)}
#' \item{Enterohemorrhagic Escherichia coli infection (weekly)}{Case numbers for Enterohemorrhagic Escherichia coli infection (weekly)}
#' \item{Enterohemorrhagic Escherichia coli infection (cumulative)}{Case numbers for Enterohemorrhagic Escherichia coli infection (cumulative)}
#' \item{Typhoid fever (weekly)}{Case numbers for Typhoid fever (weekly)}
#' \item{Typhoid fever (cumulative)}{Case numbers for Typhoid fever (cumulative)}
#' \item{Paratyphoid fever (weekly)}{Case numbers for Paratyphoid fever (weekly)}
#' \item{Paratyphoid fever (cumulative)}{Case numbers for Paratyphoid fever (cumulative)}
#' \item{Hepatitis E (weekly)}{Case numbers for Hepatitis E (weekly)}
#' \item{Hepatitis E (cumulative)}{Case numbers for Hepatitis E (cumulative)}
#' \item{West Nile fever (weekly)}{Case numbers for West Nile fever (weekly)}
#' \item{West Nile fever (cumulative)}{Case numbers for West Nile fever (cumulative)}
#' \item{Hepatitis A (weekly)}{Case numbers for Hepatitis A (weekly)}
#' \item{Hepatitis A (cumulative)}{Case numbers for Hepatitis A (cumulative)}
#' \item{Echinococcosis (weekly)}{Case numbers for Echinococcosis (weekly)}
#' \item{Echinococcosis (cumulative)}{Case numbers for Echinococcosis (cumulative)}
#' \item{Yellow fever (weekly)}{Case numbers for Yellow fever (weekly)}
#' \item{Yellow fever (cumulative)}{Case numbers for Yellow fever (cumulative)}
#' \item{Psittacosis (weekly)}{Case numbers for Psittacosis (weekly)}
#' \item{Psittacosis (cumulative)}{Case numbers for Psittacosis (cumulative)}
#' \item{Omsk hemorrhagic fever (weekly)}{Case numbers for Omsk hemorrhagic fever (weekly)}
#' \item{Omsk hemorrhagic fever (cumulative)}{Case numbers for Omsk hemorrhagic fever (cumulative)}
#' \item{Relapsing fever (weekly)}{Case numbers for Relapsing fever (weekly)}
#' \item{Relapsing fever (cumulative)}{Case numbers for Relapsing fever (cumulative)}
#' \item{Kyasanur forest disease (weekly)}{Case numbers for Kyasanur forest disease (weekly)}
#' \item{Kyasanur forest disease (cumulative)}{Case numbers for Kyasanur forest disease (cumulative)}
#' \item{Q fever (weekly)}{Case numbers for Q fever (weekly)}
#' \item{Q fever (cumulative)}{Case numbers for Q fever (cumulative)}
#' \item{Rabies (weekly)}{Case numbers for Rabies (weekly)}
#' \item{Rabies (cumulative)}{Case numbers for Rabies (cumulative)}
#' \item{Coccidioidomycosis (weekly)}{Case numbers for Coccidioidomycosis (weekly)}
#' \item{Coccidioidomycosis (cumulative)}{Case numbers for Coccidioidomycosis (cumulative)}
#' \item{Monkeypox (weekly)}{Case numbers for Monkeypox (weekly)}
#' \item{Monkeypox (cumulative)}{Case numbers for Monkeypox (cumulative)}
#' \item{Zika virus infection (weekly)}{Case numbers for Zika virus infection (weekly)}
#' \item{Zika virus infection (cumulative)}{Case numbers for Zika virus infection (cumulative)}
#' \item{Severe Fever with Thrombocytopenia Syndrome (SFTS) (weekly)}{Case numbers for Severe Fever with Thrombocytopenia Syndrome (SFTS) (weekly)}
#' \item{Severe Fever with Thrombocytopenia Syndrome (SFTS) (cumulative)}{Case numbers for Severe Fever with Thrombocytopenia Syndrome (SFTS) (cumulative)}
#' \item{Hemorrhagic fever with renal syndrome (weekly)}{Case numbers for Hemorrhagic fever with renal syndrome (weekly)}
#' \item{Hemorrhagic fever with renal syndrome (cumulative)}{Case numbers for Hemorrhagic fever with renal syndrome (cumulative)}
#' \item{Western equine encephalitis (weekly)}{Case numbers for Western equine encephalitis (weekly)}
#' \item{Western equine encephalitis (cumulative)}{Case numbers for Western equine encephalitis (cumulative)}
#' \item{Tick-borne encephalitis (weekly)}{Case numbers for Tick-borne encephalitis (weekly)}
#' \item{Tick-borne encephalitis (cumulative)}{Case numbers for Tick-borne encephalitis (cumulative)}
#' \item{Anthrax (weekly)}{Case numbers for Anthrax (weekly)}
#' \item{Anthrax (cumulative)}{Case numbers for Anthrax (cumulative)}
#' \item{Chikungunya fever (weekly)}{Case numbers for Chikungunya fever (weekly)}
#' \item{Chikungunya fever (cumulative)}{Case numbers for Chikungunya fever (cumulative)}
#' \item{Scrub typhus (Tsutsugamushi disease) (weekly)}{Case numbers for Scrub typhus (Tsutsugamushi disease) (weekly)}
#' \item{Scrub typhus (Tsutsugamushi disease) (cumulative)}{Case numbers for Scrub typhus (Tsutsugamushi disease) (cumulative)}
#' \item{Dengue fever (weekly)}{Case numbers for Dengue fever (weekly)}
#' \item{Dengue fever (cumulative)}{Case numbers for Dengue fever (cumulative)}
#' \item{Eastern equine encephalitis (weekly)}{Case numbers for Eastern equine encephalitis (weekly)}
#' \item{Eastern equine encephalitis (cumulative)}{Case numbers for Eastern equine encephalitis (cumulative)}
#' \item{Avian influenza (exclud. Avian influenza both H5N1 and H7N9) (weekly)}{Case numbers for Avian influenza (exclud. Avian influenza both H5N1 and H7N9) (weekly)}
#' \item{Avian influenza (exclud. Avian influenza both H5N1 and H7N9) (cumulative)}{Case numbers for Avian influenza (exclud. Avian influenza both H5N1 and H7N9) (cumulative)}
#' \item{Nipah virus infection (weekly)}{Case numbers for Nipah virus infection (weekly)}
#' \item{Nipah virus infection (cumulative)}{Case numbers for Nipah virus infection (cumulative)}
#' \item{Japanese spotted fever (weekly)}{Case numbers for Japanese spotted fever (weekly)}
#' \item{Japanese spotted fever (cumulative)}{Case numbers for Japanese spotted fever (cumulative)}
#' \item{Japanese encephalitis (weekly)}{Case numbers for Japanese encephalitis (weekly)}
#' \item{Japanese encephalitis (cumulative)}{Case numbers for Japanese encephalitis (cumulative)}
#' \item{Hantavirus pulmonary syndrome (weekly)}{Case numbers for Hantavirus pulmonary syndrome (weekly)}
#' \item{Hantavirus pulmonary syndrome (cumulative)}{Case numbers for Hantavirus pulmonary syndrome (cumulative)}
#' \item{Herpes B virus infection (weekly)}{Case numbers for Herpes B virus infection (weekly)}
#' \item{Herpes B virus infection (cumulative)}{Case numbers for Herpes B virus infection (cumulative)}
#' \item{Glanders (weekly)}{Case numbers for Glanders (weekly)}
#' \item{Glanders (cumulative)}{Case numbers for Glanders (cumulative)}
#' \item{Brucellosis (weekly)}{Case numbers for Brucellosis (weekly)}
#' \item{Brucellosis (cumulative)}{Case numbers for Brucellosis (cumulative)}
#' \item{Venezuelan equine encephalitis (weekly)}{Case numbers for Venezuelan equine encephalitis (weekly)}
#' \item{Venezuelan equine encephalitis (cumulative)}{Case numbers for Venezuelan equine encephalitis (cumulative)}
#' \item{Hendra virus infection (weekly)}{Case numbers for Hendra virus infection (weekly)}
#' \item{Hendra virus infection (cumulative)}{Case numbers for Hendra virus infection (cumulative)}
#' \item{Epidemic typhus (weekly)}{Case numbers for Epidemic typhus (weekly)}
#' \item{Epidemic typhus (cumulative)}{Case numbers for Epidemic typhus (cumulative)}
#' \item{Botulism (weekly)}{Case numbers for Botulism (weekly)}
#' \item{Botulism (cumulative)}{Case numbers for Botulism (cumulative)}
#' \item{Malaria (weekly)}{Case numbers for Malaria (weekly)}
#' \item{Malaria (cumulative)}{Case numbers for Malaria (cumulative)}
#' \item{Tularemia (weekly)}{Case numbers for Tularemia (weekly)}
#' \item{Tularemia (cumulative)}{Case numbers for Tularemia (cumulative)}
#' \item{Lyme disease (weekly)}{Case numbers for Lyme disease (weekly)}
#' \item{Lyme disease (cumulative)}{Case numbers for Lyme disease (cumulative)}
#' \item{Lyssavirus infection (excluding rabies) (weekly)}{Case numbers for Lyssavirus infection (excluding rabies) (weekly)}
#' \item{Lyssavirus infection (excluding rabies) (cumulative)}{Case numbers for Lyssavirus infection (excluding rabies) (cumulative)}
#' \item{Rift valley fever (weekly)}{Case numbers for Rift valley fever (weekly)}
#' \item{Rift valley fever (cumulative)}{Case numbers for Rift valley fever (cumulative)}
#' \item{Melioidosis (weekly)}{Case numbers for Melioidosis (weekly)}
#' \item{Melioidosis (cumulative)}{Case numbers for Melioidosis (cumulative)}
#' \item{Legionellosis (weekly)}{Case numbers for Legionellosis (weekly)}
#' \item{Legionellosis (cumulative)}{Case numbers for Legionellosis (cumulative)}
#' \item{Leptospirosis (weekly)}{Case numbers for Leptospirosis (weekly)}
#' \item{Leptospirosis (cumulative)}{Case numbers for Leptospirosis (cumulative)}
#' \item{Rocky mountain spotted fever (weekly)}{Case numbers for Rocky mountain spotted fever (weekly)}
#' \item{Rocky mountain spotted fever (cumulative)}{Case numbers for Rocky mountain spotted fever (cumulative)}
#' \item{Amebiasis (weekly)}{Case numbers for Amebiasis (weekly)}
#' \item{Amebiasis (cumulative)}{Case numbers for Amebiasis (cumulative)}
#' \item{Viral hepatitis (excluding hepatitis A and E) (weekly)}{Case numbers for Viral hepatitis (excluding hepatitis A and E) (weekly)}
#' \item{Viral hepatitis (excluding hepatitis A and E) (cumulative)}{Case numbers for Viral hepatitis (excluding hepatitis A and E) (cumulative)}
#' \item{Carbapenem-resistant enterobacteriaceae infection (weekly)}{Case numbers for Carbapenem-resistant enterobacteriaceae infection (weekly)}
#' \item{Carbapenem-resistant enterobacteriaceae infection (cumulative)}{Case numbers for Carbapenem-resistant enterobacteriaceae infection (cumulative)}
#' \item{Acute Flaccid Paralysis (excluding Acute poliomyelitis) (weekly)}{Case numbers for Acute Flaccid Paralysis (excluding Acute poliomyelitis) (weekly)}
#' \item{Acute Flaccid Paralysis (excluding Acute poliomyelitis) (cumulative)}{Case numbers for Acute Flaccid Paralysis (excluding Acute poliomyelitis) (cumulative)}
#' \item{Acute encephalitis (excluding JE and WNE) (weekly)}{Case numbers for Acute encephalitis (excluding JE and WNE) (weekly)}
#' \item{Acute encephalitis (excluding JE and WNE) (cumulative)}{Case numbers for Acute encephalitis (excluding JE and WNE) (cumulative)}
#' \item{Cryptosporidiosis (weekly)}{Case numbers for Cryptosporidiosis (weekly)}
#' \item{Cryptosporidiosis (cumulative)}{Case numbers for Cryptosporidiosis (cumulative)}
#' \item{Creutzfeldt-Jakob disease (weekly)}{Case numbers for Creutzfeldt-Jakob disease (weekly)}
#' \item{Creutzfeldt-Jakob disease (cumulative)}{Case numbers for Creutzfeldt-Jakob disease (cumulative)}
#' \item{Severe invasive streptococcal infections (TSLS) (weekly)}{Case numbers for Severe invasive streptococcal infections (TSLS) (weekly)}
#' \item{Severe invasive streptococcal infections (TSLS) (cumulative)}{Case numbers for Severe invasive streptococcal infections (TSLS) (cumulative)}
#' \item{Acquired immunodeficiency syndrome (AIDS) (weekly)}{Case numbers for Acquired immunodeficiency syndrome (AIDS) (weekly)}
#' \item{Acquired immunodeficiency syndrome (AIDS) (cumulative)}{Case numbers for Acquired immunodeficiency syndrome (AIDS) (cumulative)}
#' \item{Giardiasis (weekly)}{Case numbers for Giardiasis (weekly)}
#' \item{Giardiasis (cumulative)}{Case numbers for Giardiasis (cumulative)}
#' \item{Invasive haemophilus influenzae infection (weekly)}{Case numbers for Invasive haemophilus influenzae infection (weekly)}
#' \item{Invasive haemophilus influenzae infection (cumulative)}{Case numbers for Invasive haemophilus influenzae infection (cumulative)}
#' \item{Invasive meningococcal infection (weekly)}{Case numbers for Invasive meningococcal infection (weekly)}
#' \item{Invasive meningococcal infection (cumulative)}{Case numbers for Invasive meningococcal infection (cumulative)}
#' \item{Invasive streptococcal pneumoniae infection (weekly)}{Case numbers for Invasive streptococcal pneumoniae infection (weekly)}
#' \item{Invasive streptococcal pneumoniae infection (cumulative)}{Case numbers for Invasive streptococcal pneumoniae infection (cumulative)}
#' \item{Varicella (limited to hospiltalized case) (weekly)}{Case numbers for Varicella (limited to hospiltalized case) (weekly)}
#' \item{Varicella (limited to hospiltalized case) (cumulative)}{Case numbers for Varicella (limited to hospiltalized case) (cumulative)}
#' \item{Congenital rubella syndrome (weekly)}{Case numbers for Congenital rubella syndrome (weekly)}
#' \item{Congenital rubella syndrome (cumulative)}{Case numbers for Congenital rubella syndrome (cumulative)}
#' \item{Syphilis (weekly)}{Case numbers for Syphilis (weekly)}
#' \item{Syphilis (cumulative)}{Case numbers for Syphilis (cumulative)}
#' \item{Disseminated cryptococcal infection (weekly)}{Case numbers for Disseminated cryptococcal infection (weekly)}
#' \item{Disseminated cryptococcal infection (cumulative)}{Case numbers for Disseminated cryptococcal infection (cumulative)}
#' \item{Tetanus (weekly)}{Case numbers for Tetanus (weekly)}
#' \item{Tetanus (cumulative)}{Case numbers for Tetanus (cumulative)}
#' \item{Vancomycin-resistant S. aureus infection (weekly)}{Case numbers for Vancomycin-resistant S. aureus infection (weekly)}
#' \item{Vancomycin-resistant S. aureus infection (cumulative)}{Case numbers for Vancomycin-resistant S. aureus infection (cumulative)}
#' \item{Vancomycin-resistant Enterococcus infection (weekly)}{Case numbers for Vancomycin-resistant Enterococcus infection (weekly)}
#' \item{Vancomycin-resistant Enterococcus infection (cumulative)}{Case numbers for Vancomycin-resistant Enterococcus infection (cumulative)}
#' \item{Pertussis (weekly)}{Case numbers for Pertussis (weekly)}
#' \item{Pertussis (cumulative)}{Case numbers for Pertussis (cumulative)}
#' \item{Rubella (weekly)}{Case numbers for Rubella (weekly)}
#' \item{Rubella (cumulative)}{Case numbers for Rubella (cumulative)}
#' \item{Measles (weekly)}{Case numbers for Measles (weekly)}
#' \item{Measles (cumulative)}{Case numbers for Measles (cumulative)}
#' \item{Multiple drug-resistant Acinetobacter infection (weekly)}{Case numbers for Multiple drug-resistant Acinetobacter infection (weekly)}
#' \item{Multiple drug-resistant Acinetobacter infection (cumulative)}{Case numbers for Multiple drug-resistant Acinetobacter infection (cumulative)}
#' \item{Mpox (weekly)}{Case numbers for Mpox (weekly)}
#' \item{Mpox (cumulative)}{Case numbers for Mpox (cumulative)}
#' \item{Carbapenem-resistant Enterobacterales infection (weekly)}{Case numbers for Carbapenem-resistant Enterobacterales infection (weekly)}
#' \item{Carbapenem-resistant Enterobacterales infection (cumulative)}{Case numbers for Carbapenem-resistant Enterobacterales infection (cumulative)}
#' }
#'
#' @source
#' The Japan Institute for Health Security (JIHS) (https://id-info.jihs.go.jp/index.html)
"bullet"
