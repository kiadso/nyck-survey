
library(tidyverse)
library(lubridate)
library(ggplot2)
library(janitor)
library(viridis)

general_raw <- read_csv("data/ANA General Survey.csv") %>%
  mutate(Timestamp = mdy_hms(Timestamp))
  
member_raw <- read_csv("data/ANA Member Survey.csv")

general <- general_raw %>%
  select(
    Timestamp,
    Experience = 2,
    StyleAndType = 3,
    Faves = 4,
    InterestInSwedish = 5,
    InterestInUppland = 6,
    SiteVisits = 7,
    SitePurpose = 8,
    SiteSuggestions = 9,
    VirtualJamInterest = 10,
    VirtualJamFrequency = 11,
    SecondSaturday = 12,
    JamFacilitatorInterest = 13,
    Nov13JamFeedback = 14,
    AllspielSuggestions = 15,
    VirtualWorkshopInterest = 16,
    VirtualWorkshopTypes = 17,
    VirtualWorkshopFrequency = 18,
    VirtualWorkshopTeachers = 19,
    VirtualWorkshopTeachers2 = 20,
    NewsletterInterest = 21,
    NewsletterContributorInterest = 22,
    MembershipInterest = 23,
    MembershipBenefits = 24,
    VolunteerInterest = 25,
    FreeStyle = 26,
    SurveyFeedback = 27
  ) %>%
  mutate(SurveyType = "General")

member <- member_raw %>%
  select(
    Timestamp,
    Experience = 2,
    StyleAndType = 3,
    Faves = 4,
    InterestInSwedish = 5,
    InterestInUppland = 6,
    SiteVisits = 7,
    SitePurpose = 8,
    SiteSuggestions = 9,
    VirtualJamInterest = 10,
    VirtualJamFrequency = 11,
    SecondSaturday = 12,
    JamFacilitatorInterest = 13,
    Nov13JamFeedback = 14,
    AllspielSuggestions = 15,
    VirtualWorkshopInterest = 16,
    VirtualWorkshopTypes = 17,
    VirtualWorkshopFrequency = 18,
    VirtualWorkshopTeachers = 19,
    VirtualWorkshopTeachers2 = 20,
    NewsletterInterest = 21,
    NewsletterContributorInterest = 22,
    MembershipBenefits = 23,
    VolunteerInterest = 25,
    FreeStyle = 26,
    SurveyFeedback = 27
  ) %>%
  mutate(SurveyType = "Member")

# Interests ---------------------------------------------------------------

