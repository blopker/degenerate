// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesPayByBankPayments {const PostAccountsAccountRequestCapabilitiesPayByBankPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesPayByBankPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesPayByBankPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesPayByBankPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesPayByBankPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesPayByBankPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesPayByBankPayments(requested: $requested)'; } 
 }
