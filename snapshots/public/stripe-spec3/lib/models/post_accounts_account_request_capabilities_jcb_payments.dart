// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesJcbPayments {const PostAccountsAccountRequestCapabilitiesJcbPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesJcbPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesJcbPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesJcbPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesJcbPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesJcbPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesJcbPayments(requested: $requested)'; } 
 }
