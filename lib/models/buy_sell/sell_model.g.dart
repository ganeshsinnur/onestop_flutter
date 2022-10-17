// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SellModel _$SellModelFromJson(Map<String, dynamic> json) => SellModel(
      title: json['title'] as String,
      description: json['description'] as String,
      imageURL: json['imageURL'] as String,
      compressedImageURL: json['compressedImageURL'] as String,
      date: DateTime.parse(json['date'] as String),
      phonenumber: json['phonenumber'] as String,
      price: json['price'] as String,
      email: json['email'] as String,
      id: json['_id'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$SellModelToJson(SellModel instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageURL': instance.imageURL,
      'compressedImageURL': instance.compressedImageURL,
      'phonenumber': instance.phonenumber,
      'price': instance.price,
      'date': instance.date.toIso8601String(),
      'username': instance.username,
      'email': instance.email,
      '_id': instance.id,
    };
