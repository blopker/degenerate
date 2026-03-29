// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsRequestCapabilitiesCashappPayments {const PostAccountsRequestCapabilitiesCashappPayments({this.requested});

factory PostAccountsRequestCapabilitiesCashappPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestCapabilitiesCashappPayments(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsRequestCapabilitiesCashappPayments copyWith({bool Function()? requested}) { return PostAccountsRequestCapabilitiesCashappPayments(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestCapabilitiesCashappPayments &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsRequestCapabilitiesCashappPayments(requested: $requested)'; } 
 }
