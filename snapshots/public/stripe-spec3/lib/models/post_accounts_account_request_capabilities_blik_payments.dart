// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesBlikPayments {const PostAccountsAccountRequestCapabilitiesBlikPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesBlikPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesBlikPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesBlikPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesBlikPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesBlikPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesBlikPayments(requested: $requested)'; } 
 }
