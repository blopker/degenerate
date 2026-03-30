// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesTaxReportingUs1099K {const PostAccountsAccountRequestCapabilitiesTaxReportingUs1099K({this.requested});

factory PostAccountsAccountRequestCapabilitiesTaxReportingUs1099K.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesTaxReportingUs1099K(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesTaxReportingUs1099K copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesTaxReportingUs1099K(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesTaxReportingUs1099K &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesTaxReportingUs1099K(requested: $requested)'; } 
 }
