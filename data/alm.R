library('rplos')
library('plyr')
dois <- searchplos(q = "science", fl = "id", fq = list("-article_type:correction",
                                                       "cross_published_journal_key:PLoSONE",
                                                       "doc_type:full",
                                                       "publication_date:[2010-01-01T00:00:00Z TO 2010-12-31T23:59:59Z]"), limit = 50)
dois <- dois$data$id

alm <- alm_ids(doi = dois, total_details = TRUE)
alm <- ldply(alm$data)
write.csv(alm, file = "~/projects/rggvis-libdata/data/3-alm.csv", sep = ",", col.names = T, row.names=F)
