// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesMxBankTransferPayments {const PostAccountsRequestCapabilitiesMxBankTransferPayments({this.requested});

factory PostAccountsRequestCapabilitiesMxBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesMxBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesMxBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesMxBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesMxBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesMxBankTransferPayments(requested: $requested)'; } 
 }
