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
