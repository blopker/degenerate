// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments {const PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesNzBankAccountBecsDebitPayments(requested: $requested)'; } 
 }
