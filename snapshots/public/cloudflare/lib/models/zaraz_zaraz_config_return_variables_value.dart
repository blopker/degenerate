// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_secret_variable.dart';import 'zaraz_string_variable.dart';import 'zaraz_worker_variable.dart';sealed class ZarazZarazConfigReturnVariablesValue {const ZarazZarazConfigReturnVariablesValue();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ZarazZarazConfigReturnVariablesValue.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'secret' => ZarazZarazConfigReturnVariablesValueSecret.fromJson(json),
  'string' => ZarazZarazConfigReturnVariablesValueString.fromJson(json),
  'worker' => ZarazZarazConfigReturnVariablesValueWorker.fromJson(json),
  _ => ZarazZarazConfigReturnVariablesValue$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ZarazZarazConfigReturnVariablesValue$Unknown; } 
 }
@immutable final class ZarazZarazConfigReturnVariablesValueSecret extends ZarazZarazConfigReturnVariablesValue {const ZarazZarazConfigReturnVariablesValueSecret(this.zarazSecretVariable);

factory ZarazZarazConfigReturnVariablesValueSecret.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturnVariablesValueSecret(ZarazSecretVariable.fromJson(json)); }

final ZarazSecretVariable zarazSecretVariable;

@override String get type { return 'secret'; } 
@override Map<String, dynamic> toJson() { return {...zarazSecretVariable.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigReturnVariablesValueSecret && zarazSecretVariable == other.zarazSecretVariable; } 
@override int get hashCode { return zarazSecretVariable.hashCode; } 
@override String toString() { return 'ZarazZarazConfigReturnVariablesValueSecret(zarazSecretVariable: $zarazSecretVariable)'; } 
 }
@immutable final class ZarazZarazConfigReturnVariablesValueString extends ZarazZarazConfigReturnVariablesValue {const ZarazZarazConfigReturnVariablesValueString(this.zarazStringVariable);

factory ZarazZarazConfigReturnVariablesValueString.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturnVariablesValueString(ZarazStringVariable.fromJson(json)); }

final ZarazStringVariable zarazStringVariable;

@override String get type { return 'string'; } 
@override Map<String, dynamic> toJson() { return {...zarazStringVariable.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigReturnVariablesValueString && zarazStringVariable == other.zarazStringVariable; } 
@override int get hashCode { return zarazStringVariable.hashCode; } 
@override String toString() { return 'ZarazZarazConfigReturnVariablesValueString(zarazStringVariable: $zarazStringVariable)'; } 
 }
@immutable final class ZarazZarazConfigReturnVariablesValueWorker extends ZarazZarazConfigReturnVariablesValue {const ZarazZarazConfigReturnVariablesValueWorker(this.zarazWorkerVariable);

factory ZarazZarazConfigReturnVariablesValueWorker.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturnVariablesValueWorker(ZarazWorkerVariable.fromJson(json)); }

final ZarazWorkerVariable zarazWorkerVariable;

@override String get type { return 'worker'; } 
@override Map<String, dynamic> toJson() { return {...zarazWorkerVariable.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigReturnVariablesValueWorker && zarazWorkerVariable == other.zarazWorkerVariable; } 
@override int get hashCode { return zarazWorkerVariable.hashCode; } 
@override String toString() { return 'ZarazZarazConfigReturnVariablesValueWorker(zarazWorkerVariable: $zarazWorkerVariable)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ZarazZarazConfigReturnVariablesValue$Unknown extends ZarazZarazConfigReturnVariablesValue {const ZarazZarazConfigReturnVariablesValue$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigReturnVariablesValue$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ZarazZarazConfigReturnVariablesValue.unknown($json)'; } 
 }
