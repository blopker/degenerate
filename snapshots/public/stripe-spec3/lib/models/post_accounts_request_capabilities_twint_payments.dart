// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesTwintPayments {const PostAccountsRequestCapabilitiesTwintPayments({this.requested});

factory PostAccountsRequestCapabilitiesTwintPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesTwintPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesTwintPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesTwintPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesTwintPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesTwintPayments(requested: $requested)'; } 
 }
