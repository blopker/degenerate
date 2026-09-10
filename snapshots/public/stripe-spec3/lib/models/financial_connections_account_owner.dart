// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class FinancialConnectionsAccountOwnerObject {const FinancialConnectionsAccountOwnerObject._(this.value);

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
@immutable final class FinancialConnectionsAccountOwner {const FinancialConnectionsAccountOwner({required this.id, required this.name, required this.object, required this.ownership, this.email = const Omittable.absent(), this.phone = const Omittable.absent(), this.rawAddress = const Omittable.absent(), this.refreshedAt = const Omittable.absent(), });

factory FinancialConnectionsAccountOwner.fromJson(Map<String, dynamic> json) { return FinancialConnectionsAccountOwner(
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  id: json['id'] as String,
  name: json['name'] as String,
  object: FinancialConnectionsAccountOwnerObject.fromJson(json['object'] as String),
  ownership: json['ownership'] as String,
  phone: json.containsKey('phone') ? Omittable(json['phone'] as String?) : const Omittable.absent(),
  rawAddress: json.containsKey('raw_address') ? Omittable(json['raw_address'] as String?) : const Omittable.absent(),
  refreshedAt: json.containsKey('refreshed_at') ? Omittable(json['refreshed_at'] != null ? (json['refreshed_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The email address of the owner.
final Omittable<String?> email;

/// Unique identifier for the object.
final String id;

/// The full name of the owner.
final String name;

/// String representing the object's type. Objects of the same type share the same value.
final FinancialConnectionsAccountOwnerObject object;

/// The ownership object that this owner belongs to.
final String ownership;

/// The raw phone number of the owner.
final Omittable<String?> phone;

/// The raw physical address of the owner.
final Omittable<String?> rawAddress;

/// The timestamp of the refresh that updated this owner.
final Omittable<int?> refreshedAt;

Map<String, dynamic> toJson() { return {
  if (email.isPresent) 'email': email.value,
  'id': id,
  'name': name,
  'object': object.toJson(),
  'ownership': ownership,
  if (phone.isPresent) 'phone': phone.value,
  if (rawAddress.isPresent) 'raw_address': rawAddress.value,
  if (refreshedAt.isPresent) 'refreshed_at': refreshedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('object') &&
      json.containsKey('ownership') && json['ownership'] is String; } 
FinancialConnectionsAccountOwner copyWith({Omittable<String?>? email, String? id, String? name, FinancialConnectionsAccountOwnerObject? object, String? ownership, Omittable<String?>? phone, Omittable<String?>? rawAddress, Omittable<int?>? refreshedAt, }) { return FinancialConnectionsAccountOwner(
  email: email ?? this.email,
  id: id ?? this.id,
  name: name ?? this.name,
  object: object ?? this.object,
  ownership: ownership ?? this.ownership,
  phone: phone ?? this.phone,
  rawAddress: rawAddress ?? this.rawAddress,
  refreshedAt: refreshedAt ?? this.refreshedAt,
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
