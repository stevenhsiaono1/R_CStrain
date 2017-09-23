# My OWN:
patterns <- c("�®�", "����", "���", "�R��")
values <- c("A", 2:10, "J", "K", "Q")

poker_cards <- c()

for (outer_i in patterns) {
  for (inner_i in values) {
    #print(paste(outer_i, inner_i))
    poker_cards <- c(poker_cards, paste(outer_i, inner_i))
  }
}

#poker_cards
poker_logs <- c()

while(sum(poker_logs == "�®� 2") < 1){
  poker_flip <- sample(poker_cards, size = 1)
  poker_logs <- c(poker_logs, poker_flip)
  poker_cards <- poker_cards[which(poker_cards != poker_flip)]
}

poker_logs


######################################
# TA:

# �@�Ƽ��J�P 52 �i�P
# �~�P��}�l�o�P
# �o�X�®� 2 �~�i�H�����C��
# �`�@�o�F�X���H
# �o�X�h���P���P�j�p���O����H
patterns <- c("�®�", "����", "���", "����")
values <- c(2:10, "Jack", "Queen", "King", "Ace")
poker_cards <- c()
for (pattern in patterns) {
  for (value in values) {
    poker_cards <- c(poker_cards, paste(pattern, value))
  }
}
shuffled_poker_cards <- poker_cards[sample(1:52)]
poker_card_logs <- c()
while(sum(poker_card_logs == "�®� 2") < 1) {
  poker_card_logs <- c(poker_card_logs, shuffled_poker_cards[1])
  shuffled_poker_cards <- shuffled_poker_cards[-1]
}
length(poker_card_logs)
poker_card_logs

