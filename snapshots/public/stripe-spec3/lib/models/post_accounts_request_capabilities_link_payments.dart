// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesLinkPayments {const PostAccountsRequestCapabilitiesLinkPayments({this.requested});

factory PostAccountsRequestCapabilitiesLinkPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesLinkPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesLinkPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesLinkPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesLinkPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesLinkPayments(requested: $requested)'; } 
 }
