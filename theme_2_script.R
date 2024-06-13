# Шаг 6
library(dplyr)
library(janitor)
library(tidyr)
library(rstatix)
library(readr)

# Шаг 7
tableNP <- read_table("GSE181029_TPM_NP.tsv.gz")
tableNP <- clean_names(tableNP)

t_gene <- read_csv("parkinsons.csv")

# Шаг 8
table_gene <- inner_join(t_gene, tableNP, by=c('genes'='gene_name'))
table_gene <- select(table_gene, -gene_id)

# Шаг 9
table_norm <- select(table_gene, starts_with("g"), starts_with("n"))

# Шаг 10
table_norm2 <- table_norm %>% 
  tidyr::gather(Samples, Expression, norma1np_1:norma2np_3) %>%
  tidyr::spread(genes, Expression) %>%
  select(-1)

# Шаг 11
corr_norm1 <- table_norm2 %>% cor_test(method="spearman")
corr_norm <- filter(corr_norm1, p<0.05 & cor != 1)

# Шаг 12
# Те же шаги для образцов пациентов