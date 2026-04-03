// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesSofortPayments {const PostAccountsAccountRequestCapabilitiesSofortPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesSofortPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesSofortPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesSofortPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesSofortPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesSofortPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesSofortPayments(requested: $requested)'; } 
 }
