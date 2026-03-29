// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesSepaDebitPayments {const PostAccountsRequestCapabilitiesSepaDebitPayments({this.requested});

factory PostAccountsRequestCapabilitiesSepaDebitPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesSepaDebitPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesSepaDebitPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesSepaDebitPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesSepaDebitPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesSepaDebitPayments(requested: $requested)'; } 
 }
