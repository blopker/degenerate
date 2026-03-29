// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesPaycoPayments {const PostAccountsAccountRequestCapabilitiesPaycoPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesPaycoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesPaycoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesPaycoPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesPaycoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesPaycoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesPaycoPayments(requested: $requested)'; } 
 }
