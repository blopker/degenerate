// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountSigningKey {const AccountSigningKey({this.sid, this.friendlyName, this.dateCreated, this.dateUpdated, });

factory AccountSigningKey.fromJson(Map<String, dynamic> json) { return AccountSigningKey(
  sid: json['sid'] as String?,
  friendlyName: json['friendly_name'] as String?,
  dateCreated: json['date_created'] as String?,
  dateUpdated: json['date_updated'] as String?,
); }

final String? sid;

final String? friendlyName;

final String? dateCreated;

final String? dateUpdated;

Map<String, dynamic> toJson() { return {
  'sid': ?sid,
  'friendly_name': ?friendlyName,
  'date_created': ?dateCreated,
  'date_updated': ?dateUpdated,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccountSigningKey copyWith({String? Function()? sid, String? Function()? friendlyName, String? Function()? dateCreated, String? Function()? dateUpdated, }) { return AccountSigningKey(
  sid: sid != null ? sid() : this.sid,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  dateCreated: dateCreated != null ? dateCreated() : this.dateCreated,
  dateUpdated: dateUpdated != null ? dateUpdated() : this.dateUpdated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSigningKey &&
          sid == other.sid &&
          friendlyName == other.friendlyName &&
          dateCreated == other.dateCreated &&
          dateUpdated == other.dateUpdated; } 
@override int get hashCode { return Object.hash(sid, friendlyName, dateCreated, dateUpdated); } 
@override String toString() { return 'AccountSigningKey(sid: $sid, friendlyName: $friendlyName, dateCreated: $dateCreated, dateUpdated: $dateUpdated)'; } 
 }
