import tidyr
import dplyr

gate <- read.csv("~/projects/rggvis-libdata/data/1-gate-count.csv", check.names=F)

gate2 <- gate %>%
  gather(Year, Count, -branch)

gate2$circ = gate2$Count*2
gate2

write.csv(gate2, file = "~/projects/rggvis-libdata/data/2-gate-circ.csv", sep = ",", col.names = T,
            row.names=F)
