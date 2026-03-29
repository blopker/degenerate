// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountsAccountRequestCapabilitiesTreasury {const PostAccountsAccountRequestCapabilitiesTreasury({this.requested});

factory PostAccountsAccountRequestCapabilitiesTreasury.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestCapabilitiesTreasury(
  requested: json['requested'] as bool?,
); }

final bool? requested;

Map<String, dynamic> toJson() { return {
  'requested': ?requested,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested'}.contains(key)); } 
PostAccountsAccountRequestCapabilitiesTreasury copyWith({bool Function()? requested}) { return PostAccountsAccountRequestCapabilitiesTreasury(
  requested: requested != null ? requested() : this.requested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestCapabilitiesTreasury &&
          requested == other.requested; } 
@override int get hashCode { return requested.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestCapabilitiesTreasury(requested: $requested)'; } 
 }
