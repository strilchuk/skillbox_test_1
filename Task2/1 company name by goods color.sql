SELECT c.name
FROM skillbox_test.companies as c,
     skillbox_test.goods as g,
     skillbox_test.companies_goods as cg,
     skillbox_test.goods_colors as gc,
     skillbox_test.colors as col
WHERE col.id = gc.color_id
  AND gc.good_id = g.id
  AND cg.good_id = g.id
  AND cg.company_id = c.id
  AND col.id = 3