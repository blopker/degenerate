// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesTransfers {const PostAccountsAccountRequestCapabilitiesTransfers({this.requested});

factory PostAccountsAccountRequestCapabilitiesTransfers.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesTransfers(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesTransfers copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesTransfers(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesTransfers &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesTransfers(requested: $requested)'; } 
 }
