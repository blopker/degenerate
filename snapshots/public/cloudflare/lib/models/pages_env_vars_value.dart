// GENERATED CODE - DO NOT MODIFY BY HAND

import 'pages_plain_text_env_var.dart';import 'pages_secret_text_env_var.dart';sealed class PagesEnvVarsValue {const PagesEnvVarsValue();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory PagesEnvVarsValue.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'plain_text' => PagesEnvVarsValuePlainText.fromJson(json),
  'secret_text' => PagesEnvVarsValueSecretText.fromJson(json),
  _ => PagesEnvVarsValue$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is PagesEnvVarsValue$Unknown; } 
 }
final class PagesEnvVarsValuePlainText extends PagesEnvVarsValue {const PagesEnvVarsValuePlainText(this.pagesPlainTextEnvVar);

factory PagesEnvVarsValuePlainText.fromJson(Map<String, dynamic> json) { return PagesEnvVarsValuePlainText(PagesPlainTextEnvVar.fromJson(json)); }

final PagesPlainTextEnvVar pagesPlainTextEnvVar;

@override String get type { return 'plain_text'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...pagesPlainTextEnvVar.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesEnvVarsValuePlainText && pagesPlainTextEnvVar == other.pagesPlainTextEnvVar; } 
@override int get hashCode { return pagesPlainTextEnvVar.hashCode; } 
@override String toString() { return 'PagesEnvVarsValuePlainText(pagesPlainTextEnvVar: $pagesPlainTextEnvVar)'; } 
 }
final class PagesEnvVarsValueSecretText extends PagesEnvVarsValue {const PagesEnvVarsValueSecretText(this.pagesSecretTextEnvVar);

factory PagesEnvVarsValueSecretText.fromJson(Map<String, dynamic> json) { return PagesEnvVarsValueSecretText(PagesSecretTextEnvVar.fromJson(json)); }

final PagesSecretTextEnvVar pagesSecretTextEnvVar;

@override String get type { return 'secret_text'; } 
@override Map<String, dynamic> toJson() { return {'type': type, ...pagesSecretTextEnvVar.toJson()}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesEnvVarsValueSecretText && pagesSecretTextEnvVar == other.pagesSecretTextEnvVar; } 
@override int get hashCode { return pagesSecretTextEnvVar.hashCode; } 
@override String toString() { return 'PagesEnvVarsValueSecretText(pagesSecretTextEnvVar: $pagesSecretTextEnvVar)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class PagesEnvVarsValue$Unknown extends PagesEnvVarsValue {const PagesEnvVarsValue$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PagesEnvVarsValue$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'PagesEnvVarsValue.unknown($json)'; } 
 }
