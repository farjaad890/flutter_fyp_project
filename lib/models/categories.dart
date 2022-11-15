import 'package:flutter/material.dart';
import 'dart:core';
import'package:navigate/models/products.dart';
class category {
  late String name;
  late int categoryid;
  List<product> prod=[];

  category(String nam,int id,List<product> prod){
    this.name=nam;
    this.categoryid=id;
    this.prod=prod;
  }
}
List<category> categories=[
  category('meat', 0,meatproducts),
  category('frozen', 1,frozenproducts),
  category('sweet', 2,swwetproducts),
];