outer_vector = c("�®�", "����", "���", "�R��")
inner_vector = c(1:13)

for (outer_i in outer_vector) {
  for (inner_i in inner_vector) {
    print(paste(outer_i, as.character(inner_i)))
  }
}


# TA:
patterns <- c("�®�", "����", "���", "�R��")
values <- c("A", 2:10, "J", "K", "Q")
# poker_cards <- rep(NA, times = length(patterns) * length(values))
poker_cards <- c()

for (outer_i in patterns) {
  for (inner_i in values) {
    print(paste(outer_i, inner_i))
    poker_cards <- c(poker_cards, paste(outer_i, inner_i))
  }
}
poker_cards