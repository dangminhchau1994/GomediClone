import 'package:freezed_annotation/freezed_annotation.dart';
part 'register.freezed.dart';
part 'register.g.dart';

@unfreezed
class Register with _$Register {
  factory Register({
    String? firstName,
    String? password,
    String? email,
    String? login,
    int? languageId,
  }) = _Register;

  factory Register.fromJson(Map<String, dynamic> json) =>
      _$RegisterFromJson(json);
}
