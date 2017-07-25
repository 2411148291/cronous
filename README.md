# cronous
Scripts for Cronous Game

1、物品的修改

A. 物品图标：定义物品对应的图标
只存在于客户端，服务端没有，文件名：dropitems.tbl
属性表：
由客户端文件产生，服务端和客户端都有。
文件名：
loadingtbl/optionv1.opt
Option.dat

B.合成表：物品合成数据表
由客户端文件产生，服务端和客户端都有。
文件名：
loadingtbl/combine.cmb
combine.dat

C. 套装表：某些物品有套装属性，即在此定义
由服务端文件产生，服务端和客户端都有。
文件名：
loadingtbl/setitem.sit
setitem.dat

D.礼包：某些物品包括几个物品，如，升级礼包或充值礼包等，在这个表里进行定义
只有服务端有，文件名是：RelicSet.dat

E.新成长数据：新变升级数据
只有服务端有，文件名是：NewGrowth.dat
颜色装备：某些物品有异色，在此定义
只有服务端有，文件名是：special.dat

F.成长数据：
只有服务端有，文件名是：growth.dat

G.冶炼设置：定义材料的冶炼合成对应表
只有服务端有，文件名是：refine.dat

H.商城物品定义
客户端有:
ItemShopGroup.dat 商品分类
商店文件：itemshop50.dat,itemshop57.datitemshop58.dat
服务端有: ItemShop.dat 这个文件定义商品在商店50，57，58里的可见性。
加道具商城的物品：
H.1 客户端要修改的内容文件
 loadingtbl\baseitemv1.itm  要修改物品价格，这里控制道具商城显示的价格
store\itemshop50.dat
 store\itemshop57.dat
 store\itemshop58.dat
H.2 服务器端
data\BaseItem.dat 要修改物品的价格，这里的价格控制要扣玩家的道具点数
 baseitemv1, BaseItem.dat 转成的都是物品表，但是最好分开做，由于历史原因。
