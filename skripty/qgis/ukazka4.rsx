##Ukázka 4=name
##R workshop=group
##vstupni_vrstva=vector
##vzorec_lm=string
##vystupni_vrstva=output vector
library(dplyr)

linearni_regrese <- lm(as.formula(vzorec_lm), data = vstupni_vrstva)

vystupni_vrstva <- vstupni_vrstva %>%
  mutate(predikce = predict(linearni_regrese, vstupni_vrstva))