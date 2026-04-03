// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesGiropayPayments {const PostAccountsRequestCapabilitiesGiropayPayments({this.requested});

factory PostAccountsRequestCapabilitiesGiropayPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesGiropayPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesGiropayPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesGiropayPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesGiropayPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesGiropayPayments(requested: $requested)'; } 
 }
