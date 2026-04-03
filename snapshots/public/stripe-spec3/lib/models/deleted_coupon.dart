// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class DeletedCouponObject {const DeletedCouponObject._(this.value);

factory DeletedCouponObject.fromJson(String json) { return switch (json) {
  'coupon' => coupon,
  _ => DeletedCouponObject._(json),
}; }

static const DeletedCouponObject coupon = DeletedCouponObject._('coupon');

static const List<DeletedCouponObject> values = [coupon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletedCouponObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DeletedCouponObject($value)'; } 
 }
/// 
@immutable final class DeletedCoupon {const DeletedCoupon({required this.deleted, required this.id, required this.object, });

factory DeletedCoupon.fromJson(Map<String, dynamic> json) { return DeletedCoupon(
  deleted: json['deleted'] as bool,
  id: json['id'] as String,
  object: DeletedCouponObject.fromJson(json['object'] as String),
); }

/// Always true for a deleted object
final bool deleted;

/// Unique identifier for the object.
final String id;

/// String representing the object's type. Objects of the same type share the same value.
final DeletedCouponObject object;

Map<String, dynamic> toJson() { return {
  'deleted': deleted,
  'id': id,
  'object': object.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('deleted') && json['deleted'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object'); } 
DeletedCoupon copyWith({bool? deleted, String? id, DeletedCouponObject? object, }) { return DeletedCoupon(
  deleted: deleted ?? this.deleted,
  id: id ?? this.id,
  object: object ?? this.object,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletedCoupon &&
          deleted == other.deleted &&
          id == other.id &&
          object == other.object; } 
@override int get hashCode { return Object.hash(deleted, id, object); } 
@override String toString() { return 'DeletedCoupon(deleted: $deleted, id: $id, object: $object)'; } 
 }
