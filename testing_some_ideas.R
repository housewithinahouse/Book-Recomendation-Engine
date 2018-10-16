install.packages("dplyr")
library("dplyr")
book_tags_more_than_fifty = filter(book_tags, count > 50)
book_tags <- read_csv("GitHub/goodbooks-10k/book_tags.csv")
tags <- read_csv("GitHub/goodbooks-10k/tags.csv")
book_tags_more_than_fifty = filter(book_tags, count > 50)
book_tags_more_than_fifty["tag_id"] <- tags[ match(book_tags_more_than_fifty[['tag_id']], tags[['tag_id']] ) , 'tag_name']