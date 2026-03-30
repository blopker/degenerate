// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesBoletoPayments {const PostAccountsAccountRequestCapabilitiesBoletoPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesBoletoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesBoletoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesBoletoPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesBoletoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesBoletoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesBoletoPayments(requested: $requested)'; } 
 }
