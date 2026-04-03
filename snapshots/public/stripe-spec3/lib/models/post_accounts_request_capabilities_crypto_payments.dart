// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesCryptoPayments {const PostAccountsRequestCapabilitiesCryptoPayments({this.requested});

factory PostAccountsRequestCapabilitiesCryptoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesCryptoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesCryptoPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesCryptoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesCryptoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesCryptoPayments(requested: $requested)'; } 
 }
