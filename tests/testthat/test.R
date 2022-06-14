test_that("lichengo packages returns character vector of package names", {
  out <- lichengo_packages()
  expect_type(out, "character")
  for (i in 1:length(out)) {
    expect_true(out[i] %in% (.packages()))
  }
})
