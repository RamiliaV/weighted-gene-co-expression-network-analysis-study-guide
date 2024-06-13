# Шаг 3
library(tidygraph)
library(ggraph)

# Шаг 4
norm_graph <- as_tbl_graph(corr_norm, directed = FALSE)

# Шаг 5
network_norm <- ggraph(norm_graph) + 
  geom_edge_link(aes(color = cor, width = cor)) + 
  geom_node_text(aes(label = name), repel = TRUE) +
  geom_node_point(size = 5) +
  theme_graph() +
  scale_edge_color_gradient2(low = "blue", high = "red", mid = "white")

# Шаг 6
ggsave("corr_network_norm.png", network_norm, width = 15, height = 15, units="cm")

# Шаг 7
# Те же шаги для образцов пациентов