// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class RadarValueListItemObject {const RadarValueListItemObject._(this.value);

factory RadarValueListItemObject.fromJson(String json) { return switch (json) {
  'radar.value_list_item' => radarValueListItem,
  _ => RadarValueListItemObject._(json),
}; }

static const RadarValueListItemObject radarValueListItem = RadarValueListItemObject._('radar.value_list_item');

static const List<RadarValueListItemObject> values = [radarValueListItem];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarValueListItemObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarValueListItemObject($value)'; } 
 }
/// Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.
/// 
/// Related guide: [Managing list items](https://docs.stripe.com/radar/lists#managing-list-items)
@immutable final class RadarValueListItem {const RadarValueListItem({required this.created, required this.createdBy, required this.id, required this.livemode, required this.object, required this.value, required this.valueList, });

factory RadarValueListItem.fromJson(Map<String, dynamic> json) { return RadarValueListItem(
  created: (json['created'] as num).toInt(),
  createdBy: json['created_by'] as String,
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  object: RadarValueListItemObject.fromJson(json['object'] as String),
  value: json['value'] as String,
  valueList: json['value_list'] as String,
); }

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// The name or email address of the user who added this item to the value list.
final String createdBy;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final RadarValueListItemObject object;

/// The value of the item.
final String value;

/// The identifier of the value list this item belongs to.
final String valueList;

Map<String, dynamic> toJson() { return {
  'created': created,
  'created_by': createdBy,
  'id': id,
  'livemode': livemode,
  'object': object.toJson(),
  'value': value,
  'value_list': valueList,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('created_by') && json['created_by'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('value') && json['value'] is String &&
      json.containsKey('value_list') && json['value_list'] is String; } 
RadarValueListItem copyWith({int? created, String? createdBy, String? id, bool? livemode, RadarValueListItemObject? object, String? value, String? valueList, }) { return RadarValueListItem(
  created: created ?? this.created,
  createdBy: createdBy ?? this.createdBy,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  value: value ?? this.value,
  valueList: valueList ?? this.valueList,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarValueListItem &&
          created == other.created &&
          createdBy == other.createdBy &&
          id == other.id &&
          livemode == other.livemode &&
          object == other.object &&
          value == other.value &&
          valueList == other.valueList; } 
@override int get hashCode { return Object.hash(created, createdBy, id, livemode, object, value, valueList); } 
@override String toString() { return 'RadarValueListItem(created: $created, createdBy: $createdBy, id: $id, livemode: $livemode, object: $object, value: $value, valueList: $valueList)'; } 
 }
