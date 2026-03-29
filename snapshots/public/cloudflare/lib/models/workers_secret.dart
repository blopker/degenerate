// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_binding_kind_secret_key.dart';import 'workers_binding_kind_secret_text.dart';/// A secret value accessible through a binding.
sealed class WorkersSecret {const WorkersSecret();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory WorkersSecret.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'secret_key' => WorkersSecretSecretKey.fromJson(json),
  'secret_text' => WorkersSecretSecretText.fromJson(json),
  _ => WorkersSecret$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is WorkersSecret$Unknown; } 
 }
final class WorkersSecretSecretKey extends WorkersSecret {const WorkersSecretSecretKey(this.workersBindingKindSecretKey);

factory WorkersSecretSecretKey.fromJson(Map<String, dynamic> json) { return WorkersSecretSecretKey(WorkersBindingKindSecretKey.fromJson(json)); }

final WorkersBindingKindSecretKey workersBindingKindSecretKey;

@override String get type { return 'secret_key'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...workersBindingKindSecretKey.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersSecretSecretKey && workersBindingKindSecretKey == other.workersBindingKindSecretKey; } 
@override int get hashCode { return workersBindingKindSecretKey.hashCode; } 
@override String toString() { return 'WorkersSecretSecretKey(workersBindingKindSecretKey: $workersBindingKindSecretKey)'; } 
 }
final class WorkersSecretSecretText extends WorkersSecret {const WorkersSecretSecretText(this.workersBindingKindSecretText);

factory WorkersSecretSecretText.fromJson(Map<String, dynamic> json) { return WorkersSecretSecretText(WorkersBindingKindSecretText.fromJson(json)); }

final WorkersBindingKindSecretText workersBindingKindSecretText;

@override String get type { return 'secret_text'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...workersBindingKindSecretText.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersSecretSecretText && workersBindingKindSecretText == other.workersBindingKindSecretText; } 
@override int get hashCode { return workersBindingKindSecretText.hashCode; } 
@override String toString() { return 'WorkersSecretSecretText(workersBindingKindSecretText: $workersBindingKindSecretText)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class WorkersSecret$Unknown extends WorkersSecret {const WorkersSecret$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersSecret$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'WorkersSecret.unknown($json)'; } 
 }
