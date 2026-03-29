// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class GelatoRelatedPerson {const GelatoRelatedPerson({required this.account, required this.person, });

factory GelatoRelatedPerson.fromJson(Map<String, dynamic> json) { return GelatoRelatedPerson(
  account: json['account'] as String,
  person: json['person'] as String,
); }

/// Token referencing the associated Account of the related Person resource.
final String account;

/// Token referencing the related Person resource.
final String person;

Map<String, dynamic> toJson() { return {
  'account': account,
  'person': person,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account') && json['account'] is String &&
      json.containsKey('person') && json['person'] is String; } 
GelatoRelatedPerson copyWith({String? account, String? person, }) { return GelatoRelatedPerson(
  account: account ?? this.account,
  person: person ?? this.person,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoRelatedPerson &&
          account == other.account &&
          person == other.person; } 
@override int get hashCode { return Object.hash(account, person); } 
@override String toString() { return 'GelatoRelatedPerson(account: $account, person: $person)'; } 
 }
