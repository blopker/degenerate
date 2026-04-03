// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesKonbiniPayments {const PostAccountsRequestCapabilitiesKonbiniPayments({this.requested});

factory PostAccountsRequestCapabilitiesKonbiniPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesKonbiniPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesKonbiniPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesKonbiniPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesKonbiniPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesKonbiniPayments(requested: $requested)'; } 
 }
