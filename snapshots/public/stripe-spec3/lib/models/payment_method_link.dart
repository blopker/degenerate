// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentMethodLink {const PaymentMethodLink({this.email = const Omittable.absent()});

factory PaymentMethodLink.fromJson(Map<String, dynamic> json) { return PaymentMethodLink(
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
); }

/// Account owner's email address.
final Omittable<String?> email;

Map<String, dynamic> toJson() { return {
  if (email.isPresent) 'email': email.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'email'}.contains(key)); } 
PaymentMethodLink copyWith({Omittable<String?>? email}) { return PaymentMethodLink(
  email: email ?? this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodLink &&
          email == other.email; } 
@override int get hashCode { return email.hashCode; } 
@override String toString() { return 'PaymentMethodLink(email: $email)'; } 
 }
