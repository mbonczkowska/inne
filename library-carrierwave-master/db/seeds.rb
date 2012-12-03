# -*- coding: utf-8 -*-
#
# create_table "books", :force => true do |t|
#   t.string   "author"
#   t.string   "title"
#   t.string   "isbn"
#   t.integer  "price"
#   t.datetime "created_at", :null => false
#   t.datetime "updated_at", :null => false
#   t.string   "cover"
# end

Book.create! author: "Lem", title: "Wizja lokalna", isbn: "8308011136", price_pln: 100.00
Book.create! author: "Holmes", title: "Wiek cudów", isbn: "9788376484952", price_pln: 56.00
Book.create! author: "Lem", title: "Dzienniki gwiazdowe", price_pln: 35.00
Book.create! author: "King", title: "Jak pisać", isbn: "8372558841", price_pln: 32.00
