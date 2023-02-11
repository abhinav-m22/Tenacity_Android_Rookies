// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Provider {
  String name;
  String distance;
  String label;
  String logo;
  String desc;
  String orgName;
  
  Provider({
    required this.name,
    required this.distance,
    required this.label,
    required this.logo,
    required this.desc,
    required this.orgName,
  });
  Map<String,List<Food>>menu={
    
  };

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'distance': distance,
      'label': label,
      'logo': logo,
      'desc': desc,
    };
  }

  factory Provider.fromMap(Map<String, dynamic> map) {
    return Provider(
      name: map['name'] as String,
      distance: map['distance'] as String,
      label: map['label'] as String,
      logo: map['logo'] as String,
      desc: map['desc'] as String,
      orgName: map['orgName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Provider.fromJson(String source) => Provider.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Food {
}
