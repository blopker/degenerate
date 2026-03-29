// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesIndiaInternationalPayments {const PostAccountsAccountRequestCapabilitiesIndiaInternationalPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesIndiaInternationalPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesIndiaInternationalPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesIndiaInternationalPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesIndiaInternationalPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesIndiaInternationalPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesIndiaInternationalPayments(requested: $requested)'; } 
 }
