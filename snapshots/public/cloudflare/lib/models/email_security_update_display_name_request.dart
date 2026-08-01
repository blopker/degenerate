// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityUpdateDisplayNameRequest {const EmailSecurityUpdateDisplayNameRequest({this.email = const Omittable.absent(), this.isEmailRegex = const Omittable.absent(), this.name = const Omittable.absent(), });

factory EmailSecurityUpdateDisplayNameRequest.fromJson(Map<String, dynamic> json) { return EmailSecurityUpdateDisplayNameRequest(
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  isEmailRegex: json.containsKey('is_email_regex') ? Omittable(json['is_email_regex'] as bool?) : const Omittable.absent(),
  name: json.containsKey('name') ? Omittable(json['name'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> email;

final Omittable<bool?> isEmailRegex;

final Omittable<String?> name;

Map<String, dynamic> toJson() { return {
  if (email.isPresent) 'email': email.value,
  if (isEmailRegex.isPresent) 'is_email_regex': isEmailRegex.value,
  if (name.isPresent) 'name': name.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'email', 'is_email_regex', 'name'}.contains(key)); } 
EmailSecurityUpdateDisplayNameRequest copyWith({Omittable<String?>? email, Omittable<bool?>? isEmailRegex, Omittable<String?>? name, }) { return EmailSecurityUpdateDisplayNameRequest(
  email: email ?? this.email,
  isEmailRegex: isEmailRegex ?? this.isEmailRegex,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityUpdateDisplayNameRequest &&
          email == other.email &&
          isEmailRegex == other.isEmailRegex &&
          name == other.name; } 
@override int get hashCode { return Object.hash(email, isEmailRegex, name); } 
@override String toString() { return 'EmailSecurityUpdateDisplayNameRequest(email: $email, isEmailRegex: $isEmailRegex, name: $name)'; } 
 }
