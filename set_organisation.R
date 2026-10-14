library(citeme)

# Create INBO organisation item
inbo <- org_item$new(
  name = c(
    `en-GB` = "Research Institute for Nature and Forest (INBO)",
    `nl-BE` = "Instituut voor Natuur- en Bosonderzoek (INBO)",
    `fr-FR` = "Institut de Recherche sur la Nature et les Forêts (INBO)",
    `de-DE` = "Institut für Natur- und Waldforschung (INBO)"
  ),
  email = "info@inbo.be",
  rightsholder = "shared",
  funder = "when no other",
  publisher = "when no other",
  zenodo = "inbo",
  orcid = TRUE,
  ror = "00j54wy13",
  website = "https://www.vlaanderen.be/inbo/en-gb",
  logo = "https://inbo.github.io/citeme/reference/figures/logo-en.png",
  license = list(
    data:
      `CC0`: paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst",
        "licenses/cc0.md",
        sep = "/"
      ),
    package = c(
      `GPL-3` = paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst",
        "licenses/gplv3.md",
        sep = "/"
      ),
      `MIT` = paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst",
        "licenses/mit.md",
        sep = "/"
      )
    ),
    project = c(
      `CC BY 4.0` = paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst",
        "licenses/cc_by_4_0.md",
        sep = "/"
      )
    )
  )
)

# Create GuardIAS organisation item
guardias <- org_item$new(
  name = c(
    `en-GB` = "Guarding European Waters from Invasive Alien Species (GuardIAS)"
  ),
  email = "stelios@katsanevakis.com",
  rightsholder = "optional",
  funder= "shared",
  publisher= "optional",
  website = "https://guardias.eu/",
  orcid = FALSE,
  zenodo = "guardias",
  license = list(
    data = c(
      `CC0` = paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst/",
        "licenses/cc0.md",
        sep = "/"
      ),
      `CC BY 4.0` = paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst",
        "licenses/cc_by_4_0.md",
        sep = "/"
      )
    ),
    package = c(
      `GPL-3` = paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst",
        "licenses/gplv3.md",
        sep = "/"
      ),
      `MIT` = paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst",
        "licenses/mit.md",
        sep = "/"
      )
    ),
    project = c(
      `MIT` = paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst",
        "licenses/mit.md",
        sep = "/"
      ),
      `CC BY 4.0` = paste(
        "https://raw.githubusercontent.com/inbo/citeme/refs/heads/main/inst",
        "licenses/cc_by_4_0.md",
        sep = "/"
      )
    )
  )
)

# Create the GuardIAS organisation list
guardias_list <- org_list$new(
  inbo, guardias, git = "https://github.com/guardias-eu"
)

# WRite the GuardIAS organisation list to disk as yml file
guardias_list$write()
