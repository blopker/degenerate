// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_email.dart';@immutable final class EmailCreateDestinationAddressProperties {const EmailCreateDestinationAddressProperties({required this.email});

factory EmailCreateDestinationAddressProperties.fromJson(Map<String, dynamic> json) { return EmailCreateDestinationAddressProperties(
  email: EmailEmail.fromJson(json['email'] as String),
); }

final EmailEmail email;

Map<String, dynamic> toJson() { return {
  'email': email.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email'); } 
EmailCreateDestinationAddressProperties copyWith({EmailEmail? email}) { return EmailCreateDestinationAddressProperties(
  email: email ?? this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailCreateDestinationAddressProperties &&
          email == other.email; } 
@override int get hashCode { return email.hashCode; } 
@override String toString() { return 'EmailCreateDestinationAddressProperties(email: $email)'; } 
 }
