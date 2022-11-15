import 'package:flutter/material.dart';
import 'package:navigate/models/categories.dart';
import 'dart:core';

class product  {
  late String name;
  late int id,size,price,position;
  int iteminlist=0;

  product(String name,int id,int size,int price,int position){
    this.name=name;
    this.size=size;
    this.id=id;
    this.price=price;
    this.position=position;
  }
}

List<product> meatproducts=[
  product('mp1', 0, 1,5,0),
  product('mp2', 0, 1,10,1),
  product('m3', 1, 1,3,2),
  product('m4', 2, 1,15,7),
  product('m5', 3, 1,9,11),
];
List<product> frozenproducts=[
  product('f1', 0, 1,1,60),
  product('f2', 0, 1,5,84),
  product('f3', 1, 1,7,120),
  product('f4', 2, 1,9,132),
  product('f5', 3, 1,25,120),
];
List<product> swwetproducts=[
  product('s1', 0, 1,25,29),
  product('s2', 0, 1,65,42),
  product('s3', 1, 1,13,65),
  product('s4', 2, 1,78,89),
  product('s5', 3, 1,88,90),
  product('s6', 3, 1,88,26),
];