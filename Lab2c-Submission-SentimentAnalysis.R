# STEP 1. Install and Load the Required Packages ----
# The following packages can be installed and loaded before proceeding to the
# subsequent steps.

if (!is.element("languageserver", installed.packages()[, 1])) {
  install.packages("languageserver", dependencies = TRUE)
}
require("languageserver")

## dplyr - For data manipulation ----
if (!is.element("dplyr", installed.packages()[, 1])) {
  install.packages("dplyr", dependencies = TRUE)
}
require("dplyr")

## ggplot2 - For data visualizations using the Grammar for Graphics package ----
if (!is.element("ggplot2", installed.packages()[, 1])) {
  install.packages("ggplot2", dependencies = TRUE)
}
require("ggplot2")

## ggrepel - Additional options for the Grammar for Graphics package ----
if (!is.element("ggrepel", installed.packages()[, 1])) {
  install.packages("ggrepel", dependencies = TRUE)
}
require("ggrepel")

## ggraph - Additional options for the Grammar for Graphics package ----
if (!is.element("ggraph", installed.packages()[, 1])) {
  install.packages("ggraph", dependencies = TRUE)
}
require("ggraph")

## tidytext - For text mining ----
if (!is.element("tidytext", installed.packages()[, 1])) {
  install.packages("tidytext", dependencies = TRUE)
}
require("tidytext")

## tidyr - To tidy messy data ----
if (!is.element("tidyr", installed.packages()[, 1])) {
  install.packages("tidyr", dependencies = TRUE)
}
require("tidyr")

## widyr - To widen, process, and re-tidy a dataset ----
if (!is.element("widyr", installed.packages()[, 1])) {
  install.packages("widyr", dependencies = TRUE)
}
require("widyr")

## gridExtra - to arrange multiple grid-based plots on a page ----
if (!is.element("gridExtra", installed.packages()[, 1])) {
  install.packages("gridExtra", dependencies = TRUE)
}
require("gridExtra")

## knitr - for dynamic report generation ----
if (!is.element("knitr", installed.packages()[, 1])) {
  install.packages("knitr", dependencies = TRUE)
}
require("knitr")

## kableExtra - for nicely formatted output tables ----
if (!is.element("kableExtra", installed.packages()[, 1])) {
  install.packages("kableExtra", dependencies = TRUE)
}
require("kableExtra")

## formattable -  To create a formattable object ----
# A formattable object is an object to which a formatting function and related
# attributes are attached.
if (!is.element("formattable", installed.packages()[, 1])) {
  install.packages("formattable", dependencies = TRUE)
}
require("formattable")

## circlize - To create a cord diagram or visualization ----
# by Gu et al. (2014)
if (!is.element("circlize", installed.packages()[, 1])) {
  install.packages("circlize", dependencies = TRUE)
}
require("circlize")

## memery - For creating data analysis related memes ----
# The memery package generates internet memes that optionally include a
# superimposed inset plot and other atypical features, combining the visual
# impact of an attention-grabbing meme with graphic results of data analysis.
if (!is.element("memery", installed.packages()[, 1])) {
  install.packages("memery", dependencies = TRUE)
}
require("memery")

## magick - For image processing in R ----
if (!is.element("magick", installed.packages()[, 1])) {
  install.packages("magick", dependencies = TRUE)
}
require("magick")

## yarrr - To create a pirate plot ----
if (!is.element("yarrr", installed.packages()[, 1])) {
  install.packages("yarrr", dependencies = TRUE)
}
require("yarrr")

## radarchart - To create interactive radar charts using ChartJS ----
if (!is.element("radarchart", installed.packages()[, 1])) {
  install.packages("radarchart", dependencies = TRUE)
}
require("radarchart")

## igraph - To create ngram network diagrams ----
if (!is.element("igraph", installed.packages()[, 1])) {
  install.packages("igraph", dependencies = TRUE)
}
require("igraph")

## wordcloud2 - For creating wordcloud by using 'wordcloud2.JS ----
if (!is.element("wordcloud2", installed.packages()[, 1])) {
  install.packages("wordcloud2", dependencies = TRUE)
}
require("wordcloud2")

## textdata - Download sentiment lexicons and labeled text data sets ----
if (!is.element("textdata", installed.packages()[, 1])) {
  install.packages("textdata", dependencies = TRUE)
}
require("textdata")

## readr - Load datasets from CSV files ----
if (!is.element("readr", installed.packages()[, 1])) {
  install.packages("readr", dependencies = TRUE)
}
require("readr")

## stringr - For processing characters in a string ----
if (!is.element("stringr", installed.packages()[, 1])) {
  install.packages("stringr", dependencies = TRUE,
                   repos = "https://cloud.r-project.org")
}
require("stringr")

# STEP 2. Customize the Visualizations, Tables, and Colour Scheme ----
# The following defines a blue-grey colour scheme for the visualizations:
## shades of blue and shades of grey
blue_grey_colours_11 <- c("#27408E", "#304FAF", "#536CB5", "#6981c7", "#8da0db",
                          "#dde5ec", "#c8c9ca", "#B9BCC2", "#A7AAAF", "#888A8E",
                          "#636569")

blue_grey_colours_6 <- c("#27408E", "#304FAF", "#536CB5",
                         "#B9BCC2", "#A7AAAF", "#888A8E")

blue_grey_colours_4 <- c("#27408E", "#536CB5",
                         "#B9BCC2", "#888A8E")

blue_grey_colours_3 <- c("#6981c7", "#304FAF", "#888A8E")

blue_grey_colours_2 <- c("#27408E",
                         "#888A8E")

blue_grey_colours_1 <- c("#6981c7")

# Custom theme for visualizations
blue_grey_theme <- function() {
  theme(
    axis.ticks = element_line(
      linewidth = 1, linetype = "dashed",
      lineend = NULL, color = "#dfdede",
      arrow = NULL, inherit.blank = FALSE),
    axis.text = element_text(
      face = "bold", color = "#3f3f41",
      size = 12, hjust = 0.5),
    axis.title = element_text(face = "bold", color = "#3f3f41",
                              size = 14, hjust = 0.5),
    plot.title = element_text(face = "bold", color = "#3f3f41",
                              size = 16, hjust = 0.5),
    panel.grid = element_line(
      linewidth = 0.1, linetype = "dashed",
      lineend = NULL, color = "#dfdede",
      arrow = NULL, inherit.blank = FALSE),
    panel.background = element_rect(fill = "#f3eeee"),
    legend.title = element_text(face = "plain", color = "#3f3f41",
                                size = 12, hjust = 0),
    legend.position = "right"
  )
}

# Customize the text tables for consistency using HTML formatting
kable_theme <- function(dat, caption) {
  kable(dat, "html", escape = FALSE, caption = caption) %>%
    kable_styling(bootstrap_options = c("striped", "condensed", "bordered"),
                  full_width = FALSE)
}

# STEP 3. Load the Dataset ----
mid_course_evaluation <- read_csv(
  "data/Mid_Term_Course_Evaluation_Form_Preprocessed.csv",
  col_types = cols(
    Gender = col_factor(levels = c("Male", "Female")),
    `Q01_Class Demographics` = col_factor(levels = c(
      "1 : Group A - Regular", "2 : Group A - Exempt", 
      "3 : Group B - Regular", "4 : Group B - Exempt", 
      "5 : Group C - Regular", "6 : Group C - Exempt"
    )),
               `Q02_General Questions->A - 1. I am enjoying the subject` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 2. Classes start and end on time` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 3. The learning environment is participative, involves learning by doing and is group-based` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 4. The subject content is delivered according to the course outline and meets my expectations` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 5. The topics are clear and logically developed` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 6. I am developing my oral and writing skills` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 7. I am developing my reflective and critical reasoning skills` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 8. The assessment methods are assisting me to learn` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 9. I receive relevant feedback` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 10. I read the recommended readings and notes` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q02_General Questions->A - 11. I use the eLearning material posted` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q03_Level of Learning Achieved->B - 1. Concept 1 of 4 - Ensemble Methods for Predictive Analytics` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q03_Level of Learning Achieved->B - 2. Concept 2 of 4 - Predictive Modelling Using R` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q04_Quality of Teaching Strategies->C - 1. Labs with comments that describe each step to be followed` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q04_Quality of Teaching Strategies->C - 2. Labs that require you to put in effort to make a submission related to the content of the lab` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q04_Quality of Teaching Strategies->C - 3. Labs that require you to use Git to work in a team` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q04_Quality of Teaching Strategies->C - 4. Labs that require you to work alone` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q04_Quality of Teaching Strategies->C - 5. The quality of the lectures given (quality measured by the breadth (the full span of knowledge of a subject) and depth (the extent to which specific topics are focused upon, amplified, and explored) of learning - NOT quality measured by how fun/comical/lively the lectures are)` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q04_Quality of Teaching Strategies->C - 6. The recordings of online classes` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q04_Quality of Teaching Strategies->C - 7. Online classes in general` = 
                 col_factor(levels = c("1", "2", "3", "4", "5")),
               `Q04_Quality of Teaching Strategies->C - 8. Face-to-Face classes in general` = 
                 col_factor(levels = c("1", "2", "3", "4", "5"))),
           locale = locale())
           
View(mid_course_evaluation)

## Create a filtered subset of the data ----

# Function to expand contractions
expand_contractions <- function(doc) {
  doc <- gsub("I'm", "I am", doc, ignore.case = TRUE)
  doc <- gsub("you're", "you are", doc, ignore.case = TRUE)
  doc <- gsub("he's", "he is", doc, ignore.case = TRUE)
  doc <- gsub("she's", "she is", doc, ignore.case = TRUE)
  doc <- gsub("it's", "it is", doc, ignore.case = TRUE)
  doc <- gsub("we're", "we are", doc, ignore.case = TRUE)
  doc <- gsub("they're", "they are", doc, ignore.case = TRUE)
  doc <- gsub("I'll", "I will", doc, ignore.case = TRUE)
  doc <- gsub("you'll", "you will", doc, ignore.case = TRUE)
  doc <- gsub("he'll", "he will", doc, ignore.case = TRUE)
  doc <- gsub("she'll", "she will", doc, ignore.case = TRUE)
  doc <- gsub("it'll", "it will", doc, ignore.case = TRUE)
  doc <- gsub("we'll", "we will", doc, ignore.case = TRUE)
  doc <- gsub("they'll", "they will", doc, ignore.case = TRUE)
  doc <- gsub("won't", "will not", doc, ignore.case = TRUE)
  doc <- gsub("can't", "cannot", doc, ignore.case = TRUE)
  doc <- gsub("n't", " not", doc, ignore.case = TRUE)
  return(doc)
}

# Select the class group, gender, and most importantly, the likes and wishes from the original dataset
evaluation_likes_and_wishes <- mid_course_evaluation %>%
  mutate(`Student's Gender` =
           ifelse(Gender == 1, "Male", "Female")) %>%
  rename(`Class Group` = `Q01_Class Demographics`) %>%
  rename(Likes = `Q05_Likes->D - 1. Write two things you like about the teaching and learning in this unit so far.`) %>% # nolint
  rename(Wishes = `Q05_Wishes->D - 2. Write at least one recommendation to improve the teaching and learning in this unit (for the remaining weeks in the semester)`) %>% # nolint
  select(`Class Group`,
         `Student's Gender`, Absenteeism, Likes, Wishes) %>%
  filter(!is.na(Absenteeism)) %>%
  arrange(`Class Group`)

evaluation_likes_and_wishes$Likes <- sapply(
                                            evaluation_likes_and_wishes$Likes,
                                            expand_contractions)
evaluation_likes_and_wishes$Wishes <- sapply(
                                             evaluation_likes_and_wishes$Wishes,
                                             expand_contractions)

head(evaluation_likes_and_wishes, 10)

# Function to remove special characters and convert all text to a standard
# lower case
remove_special_characters <- function(doc) {
  gsub("[^a-zA-Z0-9 ]", "", doc, ignore.case = TRUE)
}

evaluation_likes_and_wishes$Likes <- sapply(evaluation_likes_and_wishes$Likes,
                                            remove_special_characters)
evaluation_likes_and_wishes$Wishes <- sapply(evaluation_likes_and_wishes$Wishes,
                                             remove_special_characters)

# Convert everything to lower case (to standardize the text)
evaluation_likes_and_wishes$Likes <- sapply(evaluation_likes_and_wishes$Likes,
                                            tolower)
evaluation_likes_and_wishes$Wishes <- sapply(evaluation_likes_and_wishes$Wishes,
                                             tolower)

# After removing special characters and converting everything to lower case
head(evaluation_likes_and_wishes, 10)

write.csv(evaluation_likes_and_wishes,
          file = "data/evaluation_likes_and_wishes.csv",
          row.names = FALSE)

# Function to censor/remove unwanted words
undesirable_words <- c("wow", "lol", "none", "na")

# unnest and remove stopwords, undesirable words, and short words
evaluation_likes_filtered <- evaluation_likes_and_wishes %>% # nolint
  unnest_tokens(word, Likes) %>%
  # do not join where the word is in the list of stopwords
  anti_join(stop_words, by = c("word")) %>%
  distinct() %>%
  filter(!word %in% undesirable_words) %>%
  filter(nchar(word) > 3) %>%
  rename(`Likes (tokenized)` = word) %>%
  select(-Wishes)

write.csv(evaluation_likes_filtered,
          file = "data/evaluation_likes_filtered.csv",
          row.names = FALSE)

evaluation_wishes_filtered <- evaluation_likes_and_wishes %>% # nolint
  unnest_tokens(word, Wishes) %>%
  # do not join where the word is in the list of stopwords
  anti_join(stop_words, by = c("word")) %>%
  distinct() %>%
  filter(!word %in% undesirable_words) %>%
  filter(nchar(word) > 3) %>%
  rename(`Wishes (tokenized)` = word) %>%
  select(-Likes)

write.csv(evaluation_wishes_filtered,
          file = "data/evaluation_wishes_filtered.csv",
          row.names = FALSE)

# STEP 4. Load the Required Lexicon (NRC) ----
## Sample Sentiment Lexicons ----
# 3 common lexicons include:
### NRC ----
# By Mohammad & Turney (2013)
# Assigns words into one or more of the following ten categories:
# positive, negative, anger, anticipation, disgust, fear, joy, sadness,
# surprise, and trust.
nrc <- get_sentiments("nrc")
View(nrc)

### AFINN ----
# Assigns words with a score that runs between -5 and 5. Negative scores
# indicate negative sentiments and positive scores indicate positive sentiments
afinn <- get_sentiments(lexicon = "afinn")
View(afinn)

### Bing ----
# Assigns words into positive and negative categories only
bing <- get_sentiments("bing")
View(bing)

### Loughran ----
# By Loughran & McDonald, (2010)
# The Loughran lexicon is specifically designed for financial text analysis and
# categorizes words into different financial sentiment categories.
loughran <- get_sentiments("loughran")
View(loughran)

# If you get an error locating the Loughran lexicon using the code above,
# then you can download it manually from the University of Notre Dame here:
# URL: https://sraf.nd.edu/loughranmcdonald-master-dictionary/
loughran <- read_csv("data/LoughranMcDonald_MasterDictionary_2018.csv")
View(loughran)

# STEP 5. Inner Join the Likes/Wishes with the Corresponding Sentiment(s) ----
# Load the lexicon from the specified file path
nrc_lexicon <- read.table(lexicon_path, sep = "\t", header = FALSE, stringsAsFactors = FALSE)
colnames(nrc_lexicon) <- c("word", "sentiment", "score")

# Perform the inner join on the likes and wishes
evaluation_likes_filtered_nrc <- evaluation_likes_filtered %>%
  inner_join(nrc_lexicon, by = c("Likes (tokenized)" = "word"),
             relationship = "many-to-many")

evaluation_wishes_filtered_nrc <- evaluation_wishes_filtered %>%
  inner_join(nrc_lexicon, by = c("Wishes (tokenized)" = "word"),
             relationship = "many-to-many")

#evaluation_likes_filtered_nrc <- evaluation_likes_filtered %>%
 # inner_join(get_sentiments("nrc"),
  #           by = join_by(`Likes (tokenized)` == word),
   #          relationship = "many-to-many")

#evaluation_wishes_filtered_nrc <- evaluation_wishes_filtered %>%
 # inner_join(get_sentiments("nrc"),
  #           by = join_by(`Wishes (tokenized)` == word),
   #          relationship = "many-to-many")

# STEP 6. Overall Sentiment ----
## Evaluation Likes ----
nrc_likes_plot <- evaluation_likes_filtered_nrc %>%
  group_by(sentiment) %>%
  # You can filter by the class group if you wish
  # filter(`Class Group` == "A") %>%
  summarise(word_count = n()) %>%
  ungroup() %>%
  mutate(sentiment = reorder(sentiment, word_count)) %>%
  # `fill = -word_count` is used to make the larger bars darker
  ggplot(aes(sentiment, word_count, fill = -word_count)) +
  geom_col() +
  guides(fill = FALSE) + # Turn off the legend
  blue_grey_theme() +
  labs(x = "Sentiment", y = "Word Count") +
  # scale_y_continuous(limits = c(0, 15000)) + #Hard code the axis limit
  ggtitle("Lexicon-Based Sentiment Analysis of Course Evaluation Likes") +
  coord_flip()
plot(nrc_likes_plot)

# Various organizations have brand guidelines. You can download the
# University's brand guidelines from here:
# https://strathmore.edu/brand-guidelines/

img <- "images/SCES-logo-01-blue-grey-bg-with-meme-space.jpg"
# The meme's label can be specified here:
lab <- "The BBT4106: Business Intelligence I course
        taught from 12th April 2023 to 19th July 2023
        by Dr Allan Omondi"
# Overlay the plot on the image and create the meme file
meme(img, lab, "memes/nrc_likes_plot.jpg", inset = nrc_likes_plot)
#Read the file back in and display it!
nrc_meme <- image_read("memes/nrc_likes_plot.jpg")
plot(nrc_meme)

## Evaluation Wishes ----
nrc_wishes_plot <- evaluation_wishes_filtered_nrc %>%
  group_by(sentiment) %>%
  # You can filter by the class group if you wish
  # filter(`Class Group` == "A") %>%
  summarise(word_count = n()) %>%
  ungroup() %>%
  mutate(sentiment = reorder(sentiment, word_count)) %>%
  # fill = -word_count is used to make the larger bars darker
  ggplot(aes(sentiment, word_count, fill = -word_count)) +
  geom_col() +
  guides(fill = FALSE) + # Turn off the legend
  blue_grey_theme() +
  labs(x = "Sentiment", y = "Word Count") +
  # scale_y_continuous(limits = c(0, 15000)) + #Hard code the axis limit
  ggtitle("Lexicon-Based Sentiment Analysis of Course Evaluation Wishes") +
  coord_flip()
plot(nrc_wishes_plot)

# Various organizations have brand guidelines. You can download the
# University's brand guidelines from here:
# https://strathmore.edu/brand-guidelines/

img <- "images/SCES-logo-01-blue-grey-bg-with-meme-space.jpg"
# The meme's label can be specified here:
lab <- "The BBT4106: Business Intelligence I course
        taught from 12th April 2023 to 19th July 2023
        by Dr Allan Omondi"
# Overlay the plot on the image and create the meme file
meme(img, lab, "memes/nrc_wishes_plot.jpg", inset = nrc_wishes_plot)
#Read the file back in and display it!
nrc_meme <- image_read("memes/nrc_wishes_plot.jpg")
plot(nrc_meme)

# STEP 7. Frequency Sentiment per Group and per Gender ----
## Evaluation Likes per Group ----
# We can save the plots by hard-coding the save function as follows:
# NOTE: Execute one filetype at a time, i.e., either PNG, JPEG, SVG, or PDF.
# png(filename = "visualizations/nrc_likes_chord.png",
#     width = 1920, height = 1080, units = "px", pointsize = 12,
#     bg = "transparent", res = 150)

jpeg(filename = "visualizations/nrc_likes_chord.jpeg",
     width = 1920, height = 1080, units = "px", pointsize = 12,
     bg = "transparent", res = 150)

# svg(filename = "visualizations/nrc_likes_chord.svg",
#     width = 8.5, height = 8.5, pointsize = 12,
#     bg = "transparent")

# pdf("visualizations/nrc_likes_chord.pdf",
#     width = 8.5, height = 8.5,
#     bg = "transparent", pagecentre = TRUE, paper = "A4")

grid_col <- c("A" = blue_grey_colours_11[1],
              "B" = "#f3c487",
              "C" = blue_grey_colours_11[5])

nrc_likes_chord <-  evaluation_likes_filtered_nrc %>%
  # filter(decade != "NA" & !sentiment %in% c("positive", "negative")) %>%
  count(sentiment, `Class Group`) %>%
  group_by(`Class Group`, sentiment) %>%
  summarise(sentiment_sum = sum(n)) %>%
  filter(sentiment_sum > 10) %>%
  mutate(sentiment = reorder(sentiment, sentiment_sum)) %>%
  ungroup()

circos.clear()
# Set the gap size
circos.par(gap.after = c(rep(5, length(unique(nrc_likes_chord[[1]])) - 1), 15,
                         rep(5, length(unique(nrc_likes_chord[[2]])) - 1), 15))

chordDiagram(nrc_likes_chord, grid.col = grid_col, transparency = .2)
title("Lexicon-Based Sentiment Analysis of Course Evaluation Likes per Group")

# To close the device used to create either the PNG, JPEG, SVG, or PDF.
dev.off()

# To plot the chord diagram in the IDE:
chordDiagram(nrc_likes_chord, grid.col = grid_col, transparency = .2)
title("Lexicon-Based Sentiment Analysis of Course Evaluation Likes per Group")

## Evaluation Wishes per Group ----
# We can save the plots by hard-coding the save function as follows:
# NOTE: Execute one filetype at a time, i.e., either PNG, JPEG, SVG, or PDF.
# png(filename = "visualizations/nrc_wishes_chord.png",
#     width = 1920, height = 1080, units = "px", pointsize = 12,
#     bg = "transparent", res = 150)

jpeg(filename = "visualizations/nrc_wishes_chord.jpeg",
     width = 1920, height = 1080, units = "px", pointsize = 12,
     bg = "transparent", res = 150)

# svg(filename = "visualizations/nrc_wishes_chord.svg",
#     width = 8.5, height = 8.5, pointsize = 12,
#     bg = "transparent")

# pdf("visualizations/nrc_wishes_chord.pdf",
#     width = 8.5, height = 8.5,
#     bg = "transparent", pagecentre = TRUE, paper = "A4")

grid_col <- c("A" = blue_grey_colours_11[1],
              "B" = "#f3c487",
              "C" = blue_grey_colours_11[5])

nrc_wishes_chord <-  evaluation_wishes_filtered_nrc %>%
  # filter(decade != "NA" & !sentiment %in% c("positive", "negative")) %>%
  count(sentiment, `Class Group`) %>%
  group_by(`Class Group`, sentiment) %>%
  summarise(sentiment_sum = sum(n)) %>%
  filter(sentiment_sum > 3) %>%
  mutate(sentiment = reorder(sentiment, sentiment_sum)) %>%
  ungroup()

circos.clear()
# Set the gap size
circos.par(gap.after = c(rep(5, length(unique(nrc_wishes_chord[[1]])) - 1), 15,
                         rep(5, length(unique(nrc_wishes_chord[[2]])) - 1), 15))

chordDiagram(nrc_wishes_chord, grid.col = grid_col, transparency = .2)
title("Lexicon-Based Sentiment Analysis of Course Evaluation Wishes per Group")

# To close the device used to create either the PNG, JPEG, SVG, or PDF.
dev.off()

# To plot the chord diagram in the IDE:
chordDiagram(nrc_wishes_chord, grid.col = grid_col, transparency = .2)
title("Lexicon-Based Sentiment Analysis of Course Evaluation Wishes per Group")

## Evaluation Likes per Gender ----
# We can save the plots by hard-coding the save function as follows:
# NOTE: Execute one filetype at a time, i.e., either PNG, JPEG, SVG, or PDF.
# png(filename = "visualizations/nrc_likes_gender_chord.png",
#     width = 1920, height = 1080, units = "px", pointsize = 12,
#     bg = "transparent", res = 150)

jpeg(filename = "visualizations/nrc_likes_gender_chord.jpeg",
     width = 1920, height = 1080, units = "px", pointsize = 12,
     bg = "transparent", res = 150)

# svg(filename = "visualizations/nrc_likes_gender_chord.svg",
#     width = 8.5, height = 8.5, pointsize = 12,
#     bg = "transparent")

# pdf("visualizations/nrc_likes_gender_chord.pdf",
#     width = 8.5, height = 8.5,
#     bg = "transparent", pagecentre = TRUE, paper = "A4")

grid_col <- c("Male" = blue_grey_colours_11[1],
              "Female" = "#f387f3")

nrc_likes_chord <-  evaluation_likes_filtered_nrc %>%
  # filter(decade != "NA" & !sentiment %in% c("positive", "negative")) %>%
  count(sentiment, `Student's Gender`) %>%
  group_by(`Student's Gender`, sentiment) %>%
  summarise(sentiment_sum = sum(n)) %>%
  filter(sentiment_sum > 10) %>%
  mutate(sentiment = reorder(sentiment, sentiment_sum)) %>%
  ungroup()

circos.clear()
# Set the gap size
circos.par(gap.after = c(rep(5, length(unique(nrc_likes_chord[[1]])) - 1), 15,
                         rep(5, length(unique(nrc_likes_chord[[2]])) - 1), 15))

chordDiagram(nrc_likes_chord, grid.col = grid_col, transparency = .2)
title("Lexicon-Based Sentiment Analysis of Course Evaluation Likes per Gender")

# To close the device used to create either the PNG, JPEG, SVG, or PDF.
dev.off()

# To plot the chord diagram in the IDE:
chordDiagram(nrc_likes_chord, grid.col = grid_col, transparency = .2)
title("Lexicon-Based Sentiment Analysis of Course Evaluation Likes per Gender")

## Evaluation Wishes per Gender ----
# We can save the plots by hard-coding the save function as follows:
# NOTE: Execute one filetype at a time, i.e., either PNG, JPEG, SVG, or PDF.
# png(filename = "visualizations/nrc_wishes_gender_chord.png",
#     width = 1920, height = 1080, units = "px", pointsize = 12,
#     bg = "transparent", res = 150)

jpeg(filename = "visualizations/nrc_wishes_gender_chord.jpeg",
     width = 1920, height = 1080, units = "px", pointsize = 12,
     bg = "transparent", res = 150)

# svg(filename = "visualizations/nrc_wishes_gender_chord.svg",
#     width = 8.5, height = 8.5, pointsize = 12,
#     bg = "transparent")

# pdf("visualizations/nrc_wishes_gender_chord.pdf",
#     width = 8.5, height = 8.5,
#     bg = "transparent", pagecentre = TRUE, paper = "A4")

grid_col <- c("Male" = "lightblue",
              "Female" = "lightpink")

nrc_wishes_chord <-  evaluation_wishes_filtered_nrc %>%
  # filter(decade != "NA" & !sentiment %in% c("positive", "negative")) %>%
  count(sentiment, `Student's Gender`) %>%
  group_by(`Student's Gender`, sentiment) %>%
  summarise(sentiment_sum = sum(n)) %>%
  filter(sentiment_sum > 3) %>%
  mutate(sentiment = reorder(sentiment, sentiment_sum)) %>%
  ungroup()

circos.clear()
# Set the gap size
circos.par(gap.after = c(rep(5, length(unique(nrc_wishes_chord[[1]])) - 1), 15,
                         rep(5, length(unique(nrc_wishes_chord[[2]])) - 1), 15))

chordDiagram(nrc_wishes_chord, grid.col = grid_col, transparency = .2)
title("Lexicon-Based Sentiment Analysis of Course Evaluation Wishes per Gender")

# To close the device used to create either the PNG, JPEG, SVG, or PDF.
dev.off()

# To plot the chord diagram in the IDE:
chordDiagram(nrc_wishes_chord, grid.col = grid_col, transparency = .2)
title("Lexicon-Based Sentiment Analysis of Course Evaluation Wishes per Gender")

# STEP 8. Percentage Sentiment per Group and per Gender ----
## Evaluation Likes per Group ----
# Get the count of words per sentiment per group
nrc_likes_per_sentiment_per_group_radar <- # nolint
  evaluation_likes_filtered_nrc %>%
  group_by(`Class Group`, sentiment) %>%
  count(`Class Group`, sentiment) %>%
  select(`Class Group`, sentiment, sentiment_count = n)

View(nrc_likes_per_sentiment_per_group_radar)

# Get the total count of sentiment words per group (not distinct)
nrc_likes_total_per_group_radar <- evaluation_likes_filtered_nrc %>% # nolint
  count(`Class Group`) %>%
  select(`Class Group`, group_total = n)

View(nrc_likes_total_per_group_radar)

# Join the two and create a percent field
nrc_likes_group_radar_chart <- nrc_likes_per_sentiment_per_group_radar %>%
  inner_join(nrc_likes_total_per_group_radar, by = "Class Group") %>%
  mutate(percent = sentiment_count / group_total * 100) %>%
  select(-sentiment_count, -group_total) %>%
  spread(`Class Group`, percent)

View(nrc_likes_group_radar_chart)

# Plot the radar visualization using chartJS
chartJSRadar(nrc_likes_group_radar_chart,
             showToolTipLabel = TRUE,
             main = "Lexicon−Based Percentage Sentiment Analysis of Course Evaluation Likes per Group") # nolint

## Evaluation Likes per Gender ----
# Get the count of words per sentiment per gender
nrc_likes_per_sentiment_per_gender_radar <- # nolint
  evaluation_likes_filtered_nrc %>%
  group_by(`Student's Gender`, sentiment) %>%
  count(`Student's Gender`, sentiment) %>%
  select(`Student's Gender`, sentiment, sentiment_count = n)

View(nrc_likes_per_sentiment_per_gender_radar)

# Get the total count of sentiment words per gender (not distinct)
nrc_likes_total_per_gender_radar <- evaluation_likes_filtered_nrc %>% # nolint
  count(`Student's Gender`) %>%
  select(`Student's Gender`, group_total = n)

View(nrc_likes_total_per_gender_radar)

# Join the two and create a percent field
nrc_likes_gender_radar_chart <- nrc_likes_per_sentiment_per_gender_radar %>%
  inner_join(nrc_likes_total_per_gender_radar, by = "Student's Gender") %>%
  mutate(percent = sentiment_count / group_total * 100) %>%
  select(-sentiment_count, -group_total) %>%
  spread(`Student's Gender`, percent)

View(nrc_likes_gender_radar_chart)

# Plot the radar visualization using chartJS
chartJSRadar(nrc_likes_gender_radar_chart,
             showToolTipLabel = TRUE,
             main = "Lexicon−Based Percentage Sentiment Analysis of Course Evaluation Likes per Gender") # nolint

## Evaluation Wishes per Group ----
# Get the count of words per sentiment per group
nrc_wishes_per_sentiment_per_group_radar <- # nolint
  evaluation_wishes_filtered_nrc %>%
  group_by(`Class Group`, sentiment) %>%
  count(`Class Group`, sentiment) %>%
  select(`Class Group`, sentiment, sentiment_count = n)

View(nrc_wishes_per_sentiment_per_group_radar)

# Get the total count of sentiment words per group (not distinct)
nrc_wishes_total_per_group_radar <- evaluation_wishes_filtered_nrc %>% # nolint
  count(`Class Group`) %>%
  select(`Class Group`, group_total = n)

View(nrc_wishes_total_per_group_radar)

# Join the two and create a percent field
nrc_wishes_group_radar_chart <- nrc_wishes_per_sentiment_per_group_radar %>%
  inner_join(nrc_wishes_total_per_group_radar, by = "Class Group") %>%
  mutate(percent = sentiment_count / group_total * 100) %>%
  select(-sentiment_count, -group_total) %>%
  spread(`Class Group`, percent)

View(nrc_wishes_group_radar_chart)

# Plot the radar visualization using chartJS
chartJSRadar(nrc_wishes_group_radar_chart,
             showToolTipLabel = TRUE,
             main = "Lexicon−Based Percentage Sentiment Analysis of Course Evaluation Wishes per Group") # nolint

## Evaluation Wishes per Gender ----
# Get the count of words per sentiment per gender
nrc_wishes_per_sentiment_per_gender_radar <- # nolint
  evaluation_wishes_filtered_nrc %>%
  group_by(`Student's Gender`, sentiment) %>%
  count(`Student's Gender`, sentiment) %>%
  select(`Student's Gender`, sentiment, sentiment_count = n)

View(nrc_wishes_per_sentiment_per_gender_radar)

# Get the total count of sentiment words per gender (not distinct)
nrc_wishes_total_per_gender_radar <- evaluation_wishes_filtered_nrc %>% # nolint
  count(`Student's Gender`) %>%
  select(`Student's Gender`, group_total = n)

View(nrc_wishes_total_per_gender_radar)

# Join the two and create a percent field
nrc_wishes_gender_radar_chart <- nrc_wishes_per_sentiment_per_gender_radar %>%
  inner_join(nrc_wishes_total_per_gender_radar, by = "Student's Gender") %>%
  mutate(percent = sentiment_count / group_total * 100) %>%
  select(-sentiment_count, -group_total) %>%
  spread(`Student's Gender`, percent)

View(nrc_wishes_gender_radar_chart)

# Plot the radar visualization using chartJS
chartJSRadar(nrc_wishes_gender_radar_chart,
             showToolTipLabel = TRUE,
             main = "Lexicon−Based Percentage Sentiment Analysis of Course Evaluation Likes per Gender") # nolint

# STEP 9. Classification of Words per Sentiment ----
## Evaluation Likes ----
evaluation_likes_filtered_nrc %>%
  # filter(`Class Group` %in% "A") %>%
  distinct(`Likes (tokenized)`) %>%
  inner_join(nrc_lexicon, by = c("Likes (tokenized)" = "word"),
             relationship = "many-to-many") %>%
  ggplot(aes(x = `Likes (tokenized)`, fill = sentiment)) +
  facet_grid(~sentiment) +
  geom_bar() + # Create a bar for each word per sentiment
  theme(panel.grid.major.x = element_blank(),
        axis.text.x = element_blank()) + # Place the words on the y-axis
  xlab(NULL) + ylab(NULL) +
  ggtitle(paste("Classification of Words in Course Evaluation Likes ",
                "based on the NRC Lexicon")) +
  coord_flip()

## Evaluation Wishes ----
evaluation_wishes_filtered_nrc %>%
  # filter(`Class Group` %in% "A") %>%
  distinct(`Wishes (tokenized)`) %>%
  inner_join(nrc_lexicon, by = c("Wishes (tokenized)" = "word"),
             relationship = "many-to-many") %>%
  ggplot(aes(x = `Wishes (tokenized)`, fill = sentiment)) +
  facet_grid(~sentiment) +
  geom_bar() + # Create a bar for each word per sentiment
  theme(panel.grid.major.x = element_blank(),
        axis.text.x = element_blank()) + # Place the words on the y-axis
  xlab(NULL) + ylab(NULL) +
  ggtitle(paste("Classification of Words in Course Evaluation Wishes ",
                "based on the NRC Lexicon")) +
  coord_flip()

# STEP 10. Average absenteeism per Question ----
## Average absenteeism per Question per Group ----
evaluation_absenteeism_per_group <- mid_course_evaluation %>% # nolint
  rename(`Class Group` = `Q01_Class Demographics`) %>%
  filter(!is.na(Absenteeism)) %>%
  group_by(`Class Group`, Gender) %>%
  summarize(
    `Absenteeism per group` = mean(Absenteeism)) %>%
  
  # arrange(Absenteeism) %>%
  select(
    `Class Group`,
    Gender,
    `Absenteeism per group`
  )

View(evaluation_absenteeism_per_group)

### Visualizations (Grouped Vertical Bar Chart) ----
# ggplot2 visualization samples are available here:
# https://r-graph-gallery.com/index.html
         
ggplot(evaluation_absenteeism_per_group,
       aes(fill = `Class Group`, y = `Absenteeism per group`, x = Gender,
           label = `Absenteeism per group`)) +
  geom_bar(position = "dodge", stat = "identity") +
  coord_flip() +  # Flip the coordinates to make it vertical
  geom_text(position = position_dodge(width = 0.9),
            hjust = 1, vjust = 0.5) +  # Add text labels
  labs(title = "Standard Absenteeism per Group",
       x = "Gender", y = "Absenteeism per group") +
  scale_fill_manual(values = blue_grey_colours_6) +
  blue_grey_theme() +
  geom_hline(yintercept = 4, color = "#b90c0c",
             linetype = "dashed", size = 1)
         
         