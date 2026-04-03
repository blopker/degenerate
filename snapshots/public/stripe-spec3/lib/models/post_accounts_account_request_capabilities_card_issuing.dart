// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesCardIssuing {const PostAccountsAccountRequestCapabilitiesCardIssuing({this.requested});

factory PostAccountsAccountRequestCapabilitiesCardIssuing.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesCardIssuing(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesCardIssuing copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesCardIssuing(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesCardIssuing &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesCardIssuing(requested: $requested)'; } 
 }
