// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesP24Payments {const PostAccountsAccountRequestCapabilitiesP24Payments({this.requested});

factory PostAccountsAccountRequestCapabilitiesP24Payments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesP24Payments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesP24Payments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesP24Payments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesP24Payments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesP24Payments(requested: $requested)'; } 
 }
