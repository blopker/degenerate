// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesPaytoPayments {const PostAccountsRequestCapabilitiesPaytoPayments({this.requested});

factory PostAccountsRequestCapabilitiesPaytoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesPaytoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesPaytoPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesPaytoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesPaytoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesPaytoPayments(requested: $requested)'; } 
 }
