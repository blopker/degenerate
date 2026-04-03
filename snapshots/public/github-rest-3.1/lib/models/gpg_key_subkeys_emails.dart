// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GpgKeySubkeysEmails {const GpgKeySubkeysEmails({this.email, this.verified, });

factory GpgKeySubkeysEmails.fromJson(Map<String, dynamic> json) { return GpgKeySubkeysEmails(
  email: json['email'] as String?,
  verified: json['verified'] as bool?,
); }

final String? email;

final bool? verified;

Map<String, dynamic> toJson() { return {
  'email': ?email,
  'verified': ?verified,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'email', 'verified'}.contains(key)); } 
GpgKeySubkeysEmails copyWith({String Function()? email, bool Function()? verified, }) { return GpgKeySubkeysEmails(
  email: email != null ? email() : this.email,
  verified: verified != null ? verified() : this.verified,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GpgKeySubkeysEmails &&
          email == other.email &&
          verified == other.verified; } 
@override int get hashCode { return Object.hash(email, verified); } 
@override String toString() { return 'GpgKeySubkeysEmails(email: $email, verified: $verified)'; } 
 }
