// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_secret_variable.dart';import 'zaraz_string_variable.dart';import 'zaraz_worker_variable.dart';sealed class ZarazZarazConfigBaseVariablesValue {const ZarazZarazConfigBaseVariablesValue();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ZarazZarazConfigBaseVariablesValue.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'secret' => ZarazZarazConfigBaseVariablesValueSecret.fromJson(json),
  'string' => ZarazZarazConfigBaseVariablesValueString.fromJson(json),
  'worker' => ZarazZarazConfigBaseVariablesValueWorker.fromJson(json),
  _ => ZarazZarazConfigBaseVariablesValue$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ZarazZarazConfigBaseVariablesValue$Unknown; } 
 }
@immutable final class ZarazZarazConfigBaseVariablesValueSecret extends ZarazZarazConfigBaseVariablesValue {const ZarazZarazConfigBaseVariablesValueSecret(this.zarazSecretVariable);

factory ZarazZarazConfigBaseVariablesValueSecret.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBaseVariablesValueSecret(ZarazSecretVariable.fromJson(json)); }

final ZarazSecretVariable zarazSecretVariable;

@override String get type { return 'secret'; } 
@override Map<String, dynamic> toJson() { return {...zarazSecretVariable.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigBaseVariablesValueSecret && zarazSecretVariable == other.zarazSecretVariable; } 
@override int get hashCode { return zarazSecretVariable.hashCode; } 
@override String toString() { return 'ZarazZarazConfigBaseVariablesValueSecret(zarazSecretVariable: $zarazSecretVariable)'; } 
 }
@immutable final class ZarazZarazConfigBaseVariablesValueString extends ZarazZarazConfigBaseVariablesValue {const ZarazZarazConfigBaseVariablesValueString(this.zarazStringVariable);

factory ZarazZarazConfigBaseVariablesValueString.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBaseVariablesValueString(ZarazStringVariable.fromJson(json)); }

final ZarazStringVariable zarazStringVariable;

@override String get type { return 'string'; } 
@override Map<String, dynamic> toJson() { return {...zarazStringVariable.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigBaseVariablesValueString && zarazStringVariable == other.zarazStringVariable; } 
@override int get hashCode { return zarazStringVariable.hashCode; } 
@override String toString() { return 'ZarazZarazConfigBaseVariablesValueString(zarazStringVariable: $zarazStringVariable)'; } 
 }
@immutable final class ZarazZarazConfigBaseVariablesValueWorker extends ZarazZarazConfigBaseVariablesValue {const ZarazZarazConfigBaseVariablesValueWorker(this.zarazWorkerVariable);

factory ZarazZarazConfigBaseVariablesValueWorker.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigBaseVariablesValueWorker(ZarazWorkerVariable.fromJson(json)); }

final ZarazWorkerVariable zarazWorkerVariable;

@override String get type { return 'worker'; } 
@override Map<String, dynamic> toJson() { return {...zarazWorkerVariable.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigBaseVariablesValueWorker && zarazWorkerVariable == other.zarazWorkerVariable; } 
@override int get hashCode { return zarazWorkerVariable.hashCode; } 
@override String toString() { return 'ZarazZarazConfigBaseVariablesValueWorker(zarazWorkerVariable: $zarazWorkerVariable)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ZarazZarazConfigBaseVariablesValue$Unknown extends ZarazZarazConfigBaseVariablesValue {const ZarazZarazConfigBaseVariablesValue$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZarazZarazConfigBaseVariablesValue$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ZarazZarazConfigBaseVariablesValue.unknown($json)'; } 
 }
