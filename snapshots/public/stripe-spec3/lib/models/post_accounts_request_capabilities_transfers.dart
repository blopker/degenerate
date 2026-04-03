// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestCapabilitiesTransfers {const PostAccountsRequestCapabilitiesTransfers({this.requested});

factory PostAccountsRequestCapabilitiesTransfers.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesTransfers(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesTransfers copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesTransfers(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesTransfers &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesTransfers(requested: $requested)'; } 
 }
