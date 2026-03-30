// GENERATED CODE - DO NOT MODIFY BY HAND

import 'checks_create_request_variant1.dart';import 'checks_create_request_variant2.dart';sealed class ChecksCreateRequest {const ChecksCreateRequest();

/// Deserialize from JSON, dispatching on the `status` discriminator.
factory ChecksCreateRequest.fromJson(Map<String, dynamic> json) { return switch (json['status']) {
  'completed' => ChecksCreateRequestCompleted.fromJson(json),
  'queued' => ChecksCreateRequestQueued.fromJson(json),
  _ => ChecksCreateRequest$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get status;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ChecksCreateRequest$Unknown; } 
 }
final class ChecksCreateRequestCompleted extends ChecksCreateRequest {const ChecksCreateRequestCompleted(this.checksCreateRequestVariant1);

factory ChecksCreateRequestCompleted.fromJson(Map<String, dynamic> json) { return ChecksCreateRequestCompleted(ChecksCreateRequestVariant1.fromJson(json)); }

final ChecksCreateRequestVariant1 checksCreateRequestVariant1;

@override String get status { return 'completed'; } 
@override Map<String, dynamic> toJson() { return {...checksCreateRequestVariant1.toJson(), 'status': status}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChecksCreateRequestCompleted && checksCreateRequestVariant1 == other.checksCreateRequestVariant1; } 
@override int get hashCode { return checksCreateRequestVariant1.hashCode; } 
@override String toString() { return 'ChecksCreateRequestCompleted(checksCreateRequestVariant1: $checksCreateRequestVariant1)'; } 
 }
final class ChecksCreateRequestQueued extends ChecksCreateRequest {const ChecksCreateRequestQueued(this.checksCreateRequestVariant2);

factory ChecksCreateRequestQueued.fromJson(Map<String, dynamic> json) { return ChecksCreateRequestQueued(ChecksCreateRequestVariant2.fromJson(json)); }

final ChecksCreateRequestVariant2 checksCreateRequestVariant2;

@override String get status { return 'queued'; } 
@override Map<String, dynamic> toJson() { return {...checksCreateRequestVariant2.toJson(), 'status': status}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChecksCreateRequestQueued && checksCreateRequestVariant2 == other.checksCreateRequestVariant2; } 
@override int get hashCode { return checksCreateRequestVariant2.hashCode; } 
@override String toString() { return 'ChecksCreateRequestQueued(checksCreateRequestVariant2: $checksCreateRequestVariant2)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ChecksCreateRequest$Unknown extends ChecksCreateRequest {const ChecksCreateRequest$Unknown(this.json);

final Map<String, dynamic> json;

@override String get status { return json['status'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChecksCreateRequest$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ChecksCreateRequest.unknown($json)'; } 
 }
