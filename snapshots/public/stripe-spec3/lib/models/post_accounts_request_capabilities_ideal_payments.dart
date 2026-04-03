// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesIdealPayments {const PostAccountsRequestCapabilitiesIdealPayments({this.requested});

factory PostAccountsRequestCapabilitiesIdealPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesIdealPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesIdealPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesIdealPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesIdealPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesIdealPayments(requested: $requested)'; } 
 }
