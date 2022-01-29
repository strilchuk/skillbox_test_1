SELECT count(g.id) as good_count
FROM skillbox_test.goods as g,
     skillbox_test.categories as c,
     skillbox_test.colors as col,
     skillbox_test.goods_categories as gc,
     skillbox_test.goods_colors as gcol
WHERE g.id = gc.good_id
  AND gc.category_id = c.id
  AND g.id = gcol.good_id
  AND col.id = gcol.color_id
  AND col.id = 2
  AND c.id = 4