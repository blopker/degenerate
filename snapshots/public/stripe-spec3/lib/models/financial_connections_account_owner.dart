// GENERATED CODE - DO NOT MODIFY BY HAND

/// String representing the object's type. Objects of the same type share the same value.
final class FinancialConnectionsAccountOwnerObject {const FinancialConnectionsAccountOwnerObject._(this.value);

factory FinancialConnectionsAccountOwnerObject.fromJson(String json) { return switch (json) {
  'financial_connections.account_owner' => financialConnectionsAccountOwner,
  _ => FinancialConnectionsAccountOwnerObject._(json),
}; }

static const FinancialConnectionsAccountOwnerObject financialConnectionsAccountOwner = FinancialConnectionsAccountOwnerObject._('financial_connections.account_owner');

static const List<FinancialConnectionsAccountOwnerObject> values = [financialConnectionsAccountOwner];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsAccountOwnerObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsAccountOwnerObject($value)'; } 
 }
/// Describes an owner of an account.
final class FinancialConnectionsAccountOwner {const FinancialConnectionsAccountOwner({this.email, required this.id, required this.name, required this.object, required this.ownership, this.phone, this.rawAddress, this.refreshedAt, });

factory FinancialConnectionsAccountOwner.fromJson(Map<String, dynamic> json) { return FinancialConnectionsAccountOwner(
  email: json['email'] as String?,
  id: json['id'] as String,
  name: json['name'] as String,
  object: FinancialConnectionsAccountOwnerObject.fromJson(json['object'] as String),
  ownership: json['ownership'] as String,
  phone: json['phone'] as String?,
  rawAddress: json['raw_address'] as String?,
  refreshedAt: json['refreshed_at'] != null ? (json['refreshed_at'] as num).toInt() : null,
); }

/// The email address of the owner.
final String? email;

/// Unique identifier for the object.
final String id;

/// The full name of the owner.
final String name;

/// String representing the object's type. Objects of the same type share the same value.
final FinancialConnectionsAccountOwnerObject object;

/// The ownership object that this owner belongs to.
final String ownership;

/// The raw phone number of the owner.
final String? phone;

/// The raw physical address of the owner.
final String? rawAddress;

/// The timestamp of the refresh that updated this owner.
final int? refreshedAt;

Map<String, dynamic> toJson() { return {
  'email': ?email,
  'id': id,
  'name': name,
  'object': object.toJson(),
  'ownership': ownership,
  'phone': ?phone,
  'raw_address': ?rawAddress,
  'refreshed_at': ?refreshedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('object') &&
      json.containsKey('ownership') && json['ownership'] is String; } 
FinancialConnectionsAccountOwner copyWith({String? Function()? email, String? id, String? name, FinancialConnectionsAccountOwnerObject? object, String? ownership, String? Function()? phone, String? Function()? rawAddress, int? Function()? refreshedAt, }) { return FinancialConnectionsAccountOwner(
  email: email != null ? email() : this.email,
  id: id ?? this.id,
  name: name ?? this.name,
  object: object ?? this.object,
  ownership: ownership ?? this.ownership,
  phone: phone != null ? phone() : this.phone,
  rawAddress: rawAddress != null ? rawAddress() : this.rawAddress,
  refreshedAt: refreshedAt != null ? refreshedAt() : this.refreshedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FinancialConnectionsAccountOwner &&
          email == other.email &&
          id == other.id &&
          name == other.name &&
          object == other.object &&
          ownership == other.ownership &&
          phone == other.phone &&
          rawAddress == other.rawAddress &&
          refreshedAt == other.refreshedAt; } 
@override int get hashCode { return Object.hash(email, id, name, object, ownership, phone, rawAddress, refreshedAt); } 
@override String toString() { return 'FinancialConnectionsAccountOwner(email: $email, id: $id, name: $name, object: $object, ownership: $ownership, phone: $phone, rawAddress: $rawAddress, refreshedAt: $refreshedAt)'; } 
 }
