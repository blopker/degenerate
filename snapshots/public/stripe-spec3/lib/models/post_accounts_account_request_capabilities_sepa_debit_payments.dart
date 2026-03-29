// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesSepaDebitPayments {const PostAccountsAccountRequestCapabilitiesSepaDebitPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesSepaDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesSepaDebitPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesSepaDebitPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesSepaDebitPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesSepaDebitPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesSepaDebitPayments(requested: $requested)'; } 
 }
