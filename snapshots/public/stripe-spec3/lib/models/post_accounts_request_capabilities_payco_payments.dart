// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesPaycoPayments {const PostAccountsRequestCapabilitiesPaycoPayments({this.requested});

factory PostAccountsRequestCapabilitiesPaycoPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesPaycoPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsRequestCapabilitiesPaycoPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesPaycoPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesPaycoPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesPaycoPayments(requested: $requested)'; } 
 }
