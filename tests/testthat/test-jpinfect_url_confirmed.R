test_that("jpinfect_url_confirmed generates correct URLs", {
  expect_equal(
    jpinfect_url_confirmed(2000),
    "https://idsc.niid.go.jp/idwr/CDROM/Kako/H12/Syuukei/Syu_11.xls"
  )

  expect_equal(
    jpinfect_url_confirmed(2005),
    "https://idsc.niid.go.jp/idwr/CDROM/Kako/H17/Syuukei/Syu_01_1.xls"
  )

  expect_equal(
    jpinfect_url_confirmed(2015, "place"),
    "https://id-info.jihs.go.jp/niid/images/idwr/ydata/2015/Syuukei/Syu_02_1.xlsx"
  )

  expect_equal(
    jpinfect_url_confirmed(2020),
    "https://id-info.jihs.go.jp/niid/images/idwr/ydata/2020/Syuukei/Syu_01_1.xlsx"
  )
  expect_equal(
    jpinfect_url_confirmed(2021, "place"),
    "https://id-info.jihs.go.jp/niid/images/idwr/ydata/2021/Syuukei/Syu_02_1.xlsx"
  )
})

