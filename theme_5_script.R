# Шаг 3
library(tibble)
library(cluster)
library(dendextend)

# Шаг 4
cor_mat_norm <- table_norm2 %>% 
  cor_mat(method="spearman")
cor_mat_norm <- column_to_rownames(cor_mat_norm, var = "rowname")

# Шаг 5
hc_norm <- agnes(cor_mat_norm, metric  = "euclidean", method = "complete")
dend_norm <- as.dendrogram(hc_norm)

# Шаг 6
# Те же шаги для образцов пациентов
# Назовите дендрограмму, построенную для образцов пациентов, dend_disease, чтобы код работал корректно

# Шаг 7
denr_cor <- cor_cophenetic(dend_norm, dend_disease)

# Шаг 8
tanglegram(dend_norm, dend_disease, lab.cex = 1.5, margin_inner = 10)

# Шаг 9
png("tanglegram.png", width = 25, height = 20, res = 300, units = "cm")
tanglegram(dend_norm, dend_disease, lab.cex = 1.5, margin_inner = 10, main_left = "Здоровые образцы", main_right = "Образцы пациентов", main = paste0("Корреляция =", round(denr_cor, 3)))
dev.off()