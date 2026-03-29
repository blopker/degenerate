// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesKrCardPayments {const PostAccountsRequestCapabilitiesKrCardPayments({this.requested});

factory PostAccountsRequestCapabilitiesKrCardPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesKrCardPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesKrCardPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesKrCardPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesKrCardPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesKrCardPayments(requested: $requested)'; } 
 }
