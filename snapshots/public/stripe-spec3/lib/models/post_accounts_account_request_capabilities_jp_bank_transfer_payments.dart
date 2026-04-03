// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesJpBankTransferPayments {const PostAccountsAccountRequestCapabilitiesJpBankTransferPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesJpBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesJpBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesJpBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesJpBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesJpBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesJpBankTransferPayments(requested: $requested)'; } 
 }
