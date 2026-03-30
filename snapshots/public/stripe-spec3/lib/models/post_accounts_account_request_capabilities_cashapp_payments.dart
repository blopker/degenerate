// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesCashappPayments {const PostAccountsAccountRequestCapabilitiesCashappPayments({this.requested});

factory PostAccountsAccountRequestCapabilitiesCashappPayments.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesCashappPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesCashappPayments copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesCashappPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesCashappPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesCashappPayments(requested: $requested)'; } 
 }
