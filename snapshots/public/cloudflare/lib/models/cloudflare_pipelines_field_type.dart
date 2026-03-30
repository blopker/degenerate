// GENERATED CODE - DO NOT MODIFY BY HAND

import 'binary.dart';import 'bool.dart';import 'float32.dart';import 'float64.dart';import 'int32.dart';import 'int64.dart';import 'json.dart';import 'list_model.dart';import 'string_model.dart';import 'struct.dart';import 'timestamp.dart';sealed class CloudflarePipelinesFieldType {const CloudflarePipelinesFieldType();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CloudflarePipelinesFieldType.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'int32' => CloudflarePipelinesFieldTypeInt32.fromJson(json),
  'int64' => CloudflarePipelinesFieldTypeInt64.fromJson(json),
  'float32' => CloudflarePipelinesFieldTypeFloat32.fromJson(json),
  'float64' => CloudflarePipelinesFieldTypeFloat64.fromJson(json),
  'bool' => CloudflarePipelinesFieldTypeBool.fromJson(json),
  'string' => CloudflarePipelinesFieldTypeString.fromJson(json),
  'binary' => CloudflarePipelinesFieldTypeBinary.fromJson(json),
  'Timestamp' => CloudflarePipelinesFieldTypeTimestamp.fromJson(json),
  'json' => CloudflarePipelinesFieldTypeJson.fromJson(json),
  'Struct' => CloudflarePipelinesFieldTypeStruct.fromJson(json),
  'ListModel' => CloudflarePipelinesFieldTypeListModel.fromJson(json),
  _ => CloudflarePipelinesFieldType$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CloudflarePipelinesFieldType$Unknown; } 
 }
final class CloudflarePipelinesFieldTypeInt32 extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeInt32(this.int32);

factory CloudflarePipelinesFieldTypeInt32.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeInt32(Int32.fromJson(json)); }

final Int32 int32;

@override String get type { return 'int32'; } 
@override Map<String, dynamic> toJson() { return {...int32.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeInt32 && int32 == other.int32; } 
@override int get hashCode { return int32.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeInt32(int32: $int32)'; } 
 }
final class CloudflarePipelinesFieldTypeInt64 extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeInt64(this.int64);

factory CloudflarePipelinesFieldTypeInt64.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeInt64(Int64.fromJson(json)); }

final Int64 int64;

@override String get type { return 'int64'; } 
@override Map<String, dynamic> toJson() { return {...int64.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeInt64 && int64 == other.int64; } 
@override int get hashCode { return int64.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeInt64(int64: $int64)'; } 
 }
final class CloudflarePipelinesFieldTypeFloat32 extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeFloat32(this.float32);

factory CloudflarePipelinesFieldTypeFloat32.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeFloat32(Float32.fromJson(json)); }

final Float32 float32;

@override String get type { return 'float32'; } 
@override Map<String, dynamic> toJson() { return {...float32.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeFloat32 && float32 == other.float32; } 
@override int get hashCode { return float32.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeFloat32(float32: $float32)'; } 
 }
final class CloudflarePipelinesFieldTypeFloat64 extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeFloat64(this.float64);

factory CloudflarePipelinesFieldTypeFloat64.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeFloat64(Float64.fromJson(json)); }

final Float64 float64;

@override String get type { return 'float64'; } 
@override Map<String, dynamic> toJson() { return {...float64.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeFloat64 && float64 == other.float64; } 
@override int get hashCode { return float64.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeFloat64(float64: $float64)'; } 
 }
final class CloudflarePipelinesFieldTypeBool extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeBool(this.$bool);

factory CloudflarePipelinesFieldTypeBool.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeBool(Bool.fromJson(json)); }

final Bool $bool;

@override String get type { return 'bool'; } 
@override Map<String, dynamic> toJson() { return {...$bool.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeBool && $bool == other.$bool; } 
@override int get hashCode { return $bool.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeBool(\$bool: ${$bool})'; } 
 }
final class CloudflarePipelinesFieldTypeString extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeString(this.stringModel);

factory CloudflarePipelinesFieldTypeString.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeString(StringModel.fromJson(json)); }

final StringModel stringModel;

@override String get type { return 'string'; } 
@override Map<String, dynamic> toJson() { return {...stringModel.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeString && stringModel == other.stringModel; } 
@override int get hashCode { return stringModel.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeString(stringModel: $stringModel)'; } 
 }
final class CloudflarePipelinesFieldTypeBinary extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeBinary(this.binary);

factory CloudflarePipelinesFieldTypeBinary.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeBinary(Binary.fromJson(json)); }

final Binary binary;

@override String get type { return 'binary'; } 
@override Map<String, dynamic> toJson() { return {...binary.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeBinary && binary == other.binary; } 
@override int get hashCode { return binary.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeBinary(binary: $binary)'; } 
 }
final class CloudflarePipelinesFieldTypeTimestamp extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeTimestamp(this.timestamp);

factory CloudflarePipelinesFieldTypeTimestamp.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeTimestamp(Timestamp.fromJson(json)); }

final Timestamp timestamp;

@override String get type { return 'Timestamp'; } 
@override Map<String, dynamic> toJson() { return {...timestamp.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeTimestamp && timestamp == other.timestamp; } 
@override int get hashCode { return timestamp.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeTimestamp(timestamp: $timestamp)'; } 
 }
final class CloudflarePipelinesFieldTypeJson extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeJson(this.json);

factory CloudflarePipelinesFieldTypeJson.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeJson(Json.fromJson(json)); }

final Json json;

@override String get type { return 'json'; } 
@override Map<String, dynamic> toJson() { return {...json.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeJson && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeJson(json: $json)'; } 
 }
final class CloudflarePipelinesFieldTypeStruct extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeStruct(this.struct);

factory CloudflarePipelinesFieldTypeStruct.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeStruct(Struct.fromJson(json)); }

final Struct struct;

@override String get type { return 'Struct'; } 
@override Map<String, dynamic> toJson() { return {...struct.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeStruct && struct == other.struct; } 
@override int get hashCode { return struct.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeStruct(struct: $struct)'; } 
 }
final class CloudflarePipelinesFieldTypeListModel extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldTypeListModel(this.listModel);

factory CloudflarePipelinesFieldTypeListModel.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFieldTypeListModel(ListModel.fromJson(json)); }

final ListModel listModel;

@override String get type { return 'ListModel'; } 
@override Map<String, dynamic> toJson() { return {...listModel.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldTypeListModel && listModel == other.listModel; } 
@override int get hashCode { return listModel.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldTypeListModel(listModel: $listModel)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CloudflarePipelinesFieldType$Unknown extends CloudflarePipelinesFieldType {const CloudflarePipelinesFieldType$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFieldType$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFieldType.unknown($json)'; } 
 }
