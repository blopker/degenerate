// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesSepaBankTransferPayments {const PostAccountsRequestCapabilitiesSepaBankTransferPayments({this.requested});

factory PostAccountsRequestCapabilitiesSepaBankTransferPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesSepaBankTransferPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesSepaBankTransferPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesSepaBankTransferPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesSepaBankTransferPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesSepaBankTransferPayments(requested: $requested)'; } 
 }
