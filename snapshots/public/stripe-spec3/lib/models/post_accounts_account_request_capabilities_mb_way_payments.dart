// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesMbWayPayments {const PostAccountsAccountRequestCapabilitiesMbWayPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesMbWayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesMbWayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesMbWayPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesMbWayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesMbWayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesMbWayPayments(requested: $requested)'; } 
 }
