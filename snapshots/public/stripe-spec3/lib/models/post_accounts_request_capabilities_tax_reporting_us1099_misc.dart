// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesTaxReportingUs1099Misc {const PostAccountsRequestCapabilitiesTaxReportingUs1099Misc({this.requested});

factory PostAccountsRequestCapabilitiesTaxReportingUs1099Misc.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesTaxReportingUs1099Misc(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesTaxReportingUs1099Misc copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesTaxReportingUs1099Misc(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesTaxReportingUs1099Misc &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesTaxReportingUs1099Misc(requested: $requested)'; } 
 }
