// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessEmailRuleEmail {const AccessEmailRuleEmail({required this.email});

factory AccessEmailRuleEmail.fromJson(Map<String, dynamic> json) { return AccessEmailRuleEmail(
  email: json['email'] as String,
); }

/// The email of the user.
final String email;

Map<String, dynamic> toJson() { return {
  'email': email,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String; } 
AccessEmailRuleEmail copyWith({String? email}) { return AccessEmailRuleEmail(
  email: email ?? this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessEmailRuleEmail &&
          email == other.email; } 
@override int get hashCode { return email.hashCode; } 
@override String toString() { return 'AccessEmailRuleEmail(email: $email)'; } 
 }
