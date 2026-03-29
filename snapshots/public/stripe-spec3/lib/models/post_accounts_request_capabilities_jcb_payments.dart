// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesJcbPayments {const PostAccountsRequestCapabilitiesJcbPayments({this.requested});

factory PostAccountsRequestCapabilitiesJcbPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesJcbPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesJcbPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesJcbPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesJcbPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesJcbPayments(requested: $requested)'; } 
 }
