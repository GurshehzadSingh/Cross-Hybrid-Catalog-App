import 'package:flutter_revision/models/cart.dart';
import 'package:flutter_revision/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
  //objects of manipulating models
  CatalogModel catalog;
  CartModel cart;

  //constructor
  MyStore(){
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}