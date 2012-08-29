# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Partner.create(:login => 'admin', :password => '888888', :password_confirmation => '888888', :name => 'google')

c1 = Category.create(:name => '男装')
c1.children.create(:name => '夹克')
c1.children.create(:name => '风衣')
c1.children.create(:name => '裤子')

c2 = Category.create(:name => '女装')
c2.children.create(:name => '风衣')
c2.children.create(:name => '外套')
c2.children.create(:name => '裙子')

c3 = Category.create(:name => '箱包')
c3.children.create(:name => '旅行箱')
c3.children.create(:name => '挎包')