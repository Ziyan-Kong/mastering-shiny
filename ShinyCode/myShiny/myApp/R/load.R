load_file <- function(name, path) {
  ext <- tools::file_ext(name)
  switch(ext,
         csv = vroom::vroom(path, delim = ",", col_types = list()),
         tsv = vroom::vroom(path, delim = "\t", col_types = list()),
         validate("Invalid file; Please upload a .csv or .tsv file")
  )
}

usethis::use_test()
