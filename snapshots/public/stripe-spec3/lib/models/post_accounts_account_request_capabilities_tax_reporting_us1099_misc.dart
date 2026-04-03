// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestCapabilitiesTaxReportingUs1099Misc {const PostAccountsAccountRequestCapabilitiesTaxReportingUs1099Misc({this.requested});

factory PostAccountsAccountRequestCapabilitiesTaxReportingUs1099Misc.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesTaxReportingUs1099Misc(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesTaxReportingUs1099Misc copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesTaxReportingUs1099Misc(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesTaxReportingUs1099Misc &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesTaxReportingUs1099Misc(requested: $requested)'; } 
 }
