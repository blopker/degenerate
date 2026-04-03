// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesNzBankAccountBecsDebitPayments {const PostAccountsRequestCapabilitiesNzBankAccountBecsDebitPayments({this.requested});

factory PostAccountsRequestCapabilitiesNzBankAccountBecsDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesNzBankAccountBecsDebitPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesNzBankAccountBecsDebitPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesNzBankAccountBecsDebitPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesNzBankAccountBecsDebitPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesNzBankAccountBecsDebitPayments(requested: $requested)'; } 
 }
