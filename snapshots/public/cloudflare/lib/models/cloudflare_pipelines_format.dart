// GENERATED CODE - DO NOT MODIFY BY HAND

import 'json2.dart';import 'parquet.dart';sealed class CloudflarePipelinesFormat {const CloudflarePipelinesFormat();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory CloudflarePipelinesFormat.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'Json2' => CloudflarePipelinesFormatJson2.fromJson(json),
  'Parquet' => CloudflarePipelinesFormatParquet.fromJson(json),
  _ => CloudflarePipelinesFormat$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is CloudflarePipelinesFormat$Unknown; } 
 }
final class CloudflarePipelinesFormatJson2 extends CloudflarePipelinesFormat {const CloudflarePipelinesFormatJson2(this.json2);

factory CloudflarePipelinesFormatJson2.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFormatJson2(Json2.fromJson(json)); }

final Json2 json2;

@override String get type { return 'Json2'; } 
@override Map<String, dynamic> toJson() { return {...json2.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFormatJson2 && json2 == other.json2; } 
@override int get hashCode { return json2.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFormatJson2(json2: $json2)'; } 
 }
final class CloudflarePipelinesFormatParquet extends CloudflarePipelinesFormat {const CloudflarePipelinesFormatParquet(this.parquet);

factory CloudflarePipelinesFormatParquet.fromJson(Map<String, dynamic> json) { return CloudflarePipelinesFormatParquet(Parquet.fromJson(json)); }

final Parquet parquet;

@override String get type { return 'Parquet'; } 
@override Map<String, dynamic> toJson() { return {...parquet.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFormatParquet && parquet == other.parquet; } 
@override int get hashCode { return parquet.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFormatParquet(parquet: $parquet)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class CloudflarePipelinesFormat$Unknown extends CloudflarePipelinesFormat {const CloudflarePipelinesFormat$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CloudflarePipelinesFormat$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'CloudflarePipelinesFormat.unknown($json)'; } 
 }
