// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetCheckoutSessionsCustomerDetails {const GetCheckoutSessionsCustomerDetails({required this.email});

factory GetCheckoutSessionsCustomerDetails.fromJson(Map<String, dynamic> json) { return GetCheckoutSessionsCustomerDetails(
  email: json['email'] as String,
); }

final String email;

Map<String, dynamic> toJson() { return {
  'email': email,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String; } 
GetCheckoutSessionsCustomerDetails copyWith({String? email}) { return GetCheckoutSessionsCustomerDetails(
  email: email ?? this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCheckoutSessionsCustomerDetails &&
          email == other.email; } 
@override int get hashCode { return email.hashCode; } 
@override String toString() { return 'GetCheckoutSessionsCustomerDetails(email: $email)'; } 
 }
