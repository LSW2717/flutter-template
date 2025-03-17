// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionModel<T> _$CollectionModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    CollectionModel<T>(
      embedded: fromJsonT(json['_embedded']),
      page: PageModel.fromJson(json['page'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CollectionModelToJson<T>(
  CollectionModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      '_embedded': toJsonT(instance.embedded),
      'page': instance.page,
    };

FriendsModel _$FriendsModelFromJson(Map<String, dynamic> json) => FriendsModel(
      friends: (json['friends'] as List<dynamic>)
          .map((e) => FriendModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FriendsModelToJson(FriendsModel instance) =>
    <String, dynamic>{
      'friends': instance.friends,
    };

FriendModel _$FriendModelFromJson(Map<String, dynamic> json) => FriendModel(
      id: json['id'] as String,
      friendName: json['friendName'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$FriendModelToJson(FriendModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'friendName': instance.friendName,
      'userId': instance.userId,
    };

PageModel _$PageModelFromJson(Map<String, dynamic> json) => PageModel(
      size: (json['size'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$PageModelToJson(PageModel instance) => <String, dynamic>{
      'size': instance.size,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'number': instance.number,
    };
