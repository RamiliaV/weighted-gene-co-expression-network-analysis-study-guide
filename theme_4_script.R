# Шаг 2
library(tidygraph)
library(ggraph)
library(readr)
library(dplyr)

# Шаг 3
norm_graph_2 <- norm_graph %>%
  activate(edges) %>%
  mutate(weight = abs(cor))

# Шаг 4
norm_graph_parameters <- norm_graph_2 %>%
  activate(nodes) %>%
  mutate(hub = centrality_hub(weights = weight),
         betweenness = centrality_betweenness(weight)) %>%
  mutate(group = group_edge_betweenness(weights = weight)) %>%
  as.data.frame()

# Шаг 5
network_norm_2 <- ggraph(norm_graph_2) + 
  geom_edge_link(aes(color = cor, width = cor)) + 
  geom_node_point(aes(color = factor(norm_graph_parameters$group), size = log(norm_graph_parameters$hub))) +
  geom_node_text(aes(label = name, alpha = log(norm_graph_parameters$betweenness)), repel = TRUE) +
  theme_graph() +
  scale_edge_color_gradient2(low = "blue", high = "red", mid = "white")

# Шаг 6
ggsave("corr_network_norm_key_genes.png", network_norm_2, width = 25, height = 15, units="cm")

# Шаг 7
# Те же шаги для образцов пациентов