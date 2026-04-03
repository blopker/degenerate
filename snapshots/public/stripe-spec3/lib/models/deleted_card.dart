// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class DeletedCardObject {const DeletedCardObject._(this.value);

factory DeletedCardObject.fromJson(String json) { return switch (json) {
  'card' => card,
  _ => DeletedCardObject._(json),
}; }

static const DeletedCardObject card = DeletedCardObject._('card');

static const List<DeletedCardObject> values = [card];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedCardObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedCardObject($value)'; } 
 }
/// 
@immutable final class DeletedCard {const DeletedCard({required this.deleted, required this.id, required this.object, this.currency, });

factory DeletedCard.fromJson(Map<String, dynamic> json) { return DeletedCard(
  currency: json['currency'] as String?,
  deleted: json['deleted'] as bool,
  id: json['id'] as String,
  object: DeletedCardObject.fromJson(json['object'] as String),
); }

/// Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
final String? currency;

/// Always true for a deleted object
final bool deleted;

/// Unique identifier for the object.
final String id;

/// String representing the object's type. Objects of the same type share the same value.
final DeletedCardObject object;

Map<String, dynamic> toJson() { return {
  'currency': ?currency,
  'deleted': deleted,
  'id': id,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object'); } 
DeletedCard copyWith({String? Function()? currency, bool? deleted, String? id, DeletedCardObject? object, }) { return DeletedCard(
  currency: currency != null ? currency() : this.currency,
  deleted: deleted ?? this.deleted,
  id: id ?? this.id,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletedCard &&
          currency == other.currency &&
          deleted == other.deleted &&
          id == other.id &&
          object == other.object; } 
@override int get hashCode { return Object.hash(currency, deleted, id, object); } 
@override String toString() { return 'DeletedCard(currency: $currency, deleted: $deleted, id: $id, object: $object)'; } 
 }
