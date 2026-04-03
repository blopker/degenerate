// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesKonbiniPayments {const PostAccountsAccountRequestCapabilitiesKonbiniPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesKonbiniPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesKonbiniPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesKonbiniPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesKonbiniPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesKonbiniPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesKonbiniPayments(requested: $requested)'; } 
 }
