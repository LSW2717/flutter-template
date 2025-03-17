import 'package:json_annotation/json_annotation.dart';

part 'collection_model.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class CollectionModel<T> {

  @JsonKey(name: "_embedded")
  final T embedded;

  final PageModel page;

  CollectionModel({
    required this.embedded,
    required this.page,
  });

  factory CollectionModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$CollectionModelFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$CollectionModelToJson<T>(this, toJsonT);
}

@JsonSerializable()
class FriendsModel {
  final List<FriendModel> friends;

  FriendsModel({
    required this.friends,
  });

  factory FriendsModel.fromJson(Map<String, dynamic> json) =>
      _$FriendsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FriendsModelToJson(this);
}

@JsonSerializable()
class FriendModel {
  String id;
  String friendName;
  String userId;

  FriendModel({
    required this.id,
    required this.friendName,
    required this.userId,
  });

  factory FriendModel.fromJson(Map<String, dynamic> json) =>
      _$FriendModelFromJson(json);

  Map<String, dynamic> toJson() => _$FriendModelToJson(this);
}

//CollectionModel<FriendsModel> friends

@JsonSerializable()
class PageModel {
  final int size;
  final int totalElements;
  final int totalPages;
  final int number;

  PageModel({
    required this.size,
    required this.totalElements,
    required this.totalPages,
    required this.number,
  });

  factory PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);

  Map<String, dynamic> toJson() => _$PageModelToJson(this);
}
