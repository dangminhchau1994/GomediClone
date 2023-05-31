import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Token {
  final String? idToken;

  Token({this.idToken});

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
