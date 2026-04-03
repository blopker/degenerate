// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zaraz_custom_managed_component.dart';import 'zaraz_managed_component.dart';import 'zaraz_secret_variable.dart';import 'zaraz_string_variable.dart';import 'zaraz_worker_variable.dart';import 'zaraz_zaraz_config_return_analytics.dart';import 'zaraz_zaraz_config_return_consent.dart';import 'zaraz_zaraz_config_return_settings.dart';import 'zaraz_zaraz_config_return_tools_value.dart';import 'zaraz_zaraz_config_return_triggers_value.dart';import 'zaraz_zaraz_config_return_variables_value.dart';@immutable final class ZarazZarazConfigReturn {const ZarazZarazConfigReturn({required this.dataLayer, required this.debugKey, required this.settings, required this.triggers, required this.variables, required this.zarazVersion, required this.tools, this.analytics, this.consent, this.historyChange, });

factory ZarazZarazConfigReturn.fromJson(Map<String, dynamic> json) { return ZarazZarazConfigReturn(
  analytics: json['analytics'] != null ? ZarazZarazConfigReturnAnalytics.fromJson(json['analytics'] as Map<String, dynamic>) : null,
  consent: json['consent'] != null ? ZarazZarazConfigReturnConsent.fromJson(json['consent'] as Map<String, dynamic>) : null,
  dataLayer: json['dataLayer'] as bool,
  debugKey: json['debugKey'] as String,
  historyChange: json['historyChange'] as bool?,
  settings: ZarazZarazConfigReturnSettings.fromJson(json['settings'] as Map<String, dynamic>),
  triggers: (json['triggers'] as Map<String, dynamic>).map((k, v) => MapEntry(k, ZarazZarazConfigReturnTriggersValue.fromJson(v as Map<String, dynamic>))),
  variables: (json['variables'] as Map<String, dynamic>).map((k, v) => MapEntry(k, OneOf3.parse(v, fromA: (v) => ZarazStringVariable.fromJson(v as Map<String, dynamic>), fromB: (v) => ZarazSecretVariable.fromJson(v as Map<String, dynamic>), fromC: (v) => ZarazWorkerVariable.fromJson(v as Map<String, dynamic>),))),
  zarazVersion: (json['zarazVersion'] as num).toInt(),
  tools: (json['tools'] as Map<String, dynamic>).map((k, v) => MapEntry(k, OneOf2.parse(v, fromA: (v) => ZarazManagedComponent.fromJson(v as Map<String, dynamic>), fromB: (v) => ZarazCustomManagedComponent.fromJson(v as Map<String, dynamic>),))),
); }

/// Cloudflare Monitoring settings.
final ZarazZarazConfigReturnAnalytics? analytics;

/// Consent management configuration.
final ZarazZarazConfigReturnConsent? consent;

/// Data layer compatibility mode enabled.
final bool dataLayer;

/// The key for Zaraz debug mode.
final String debugKey;

/// Single Page Application support enabled.
final bool? historyChange;

/// General Zaraz settings.
final ZarazZarazConfigReturnSettings settings;

/// Triggers set up under Zaraz configuration, where key is the trigger alpha-numeric ID and value is the trigger configuration.
final Map<String,ZarazZarazConfigReturnTriggersValue> triggers;

/// Variables set up under Zaraz configuration, where key is the variable alpha-numeric ID and value is the variable configuration. Values of variables of type secret are not included.
final Map<String,ZarazZarazConfigReturnVariablesValue> variables;

/// Zaraz internal version of the config.
final int zarazVersion;

/// Tools set up under Zaraz configuration, where key is the alpha-numeric tool ID and value is the tool configuration object.
final Map<String,ZarazZarazConfigReturnToolsValue> tools;

Map<String, dynamic> toJson() { return {
  if (analytics != null) 'analytics': analytics?.toJson(),
  if (consent != null) 'consent': consent?.toJson(),
  'dataLayer': dataLayer,
  'debugKey': debugKey,
  'historyChange': ?historyChange,
  'settings': settings.toJson(),
  'triggers': triggers.map((k, v) => MapEntry(k, v.toJson())),
  'variables': variables.map((k, v) => MapEntry(k, v.toJson())),
  'zarazVersion': zarazVersion,
  'tools': tools.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('dataLayer') && json['dataLayer'] is bool &&
      json.containsKey('debugKey') && json['debugKey'] is String &&
      json.containsKey('settings') &&
      json.containsKey('triggers') &&
      json.containsKey('variables') &&
      json.containsKey('zarazVersion') && json['zarazVersion'] is num &&
      json.containsKey('tools'); } 
ZarazZarazConfigReturn copyWith({ZarazZarazConfigReturnAnalytics Function()? analytics, ZarazZarazConfigReturnConsent Function()? consent, bool? dataLayer, String? debugKey, bool Function()? historyChange, ZarazZarazConfigReturnSettings? settings, Map<String,ZarazZarazConfigReturnTriggersValue>? triggers, Map<String,ZarazZarazConfigReturnVariablesValue>? variables, int? zarazVersion, Map<String,ZarazZarazConfigReturnToolsValue>? tools, }) { return ZarazZarazConfigReturn(
  analytics: analytics != null ? analytics() : this.analytics,
  consent: consent != null ? consent() : this.consent,
  dataLayer: dataLayer ?? this.dataLayer,
  debugKey: debugKey ?? this.debugKey,
  historyChange: historyChange != null ? historyChange() : this.historyChange,
  settings: settings ?? this.settings,
  triggers: triggers ?? this.triggers,
  variables: variables ?? this.variables,
  zarazVersion: zarazVersion ?? this.zarazVersion,
  tools: tools ?? this.tools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazZarazConfigReturn &&
          analytics == other.analytics &&
          consent == other.consent &&
          dataLayer == other.dataLayer &&
          debugKey == other.debugKey &&
          historyChange == other.historyChange &&
          settings == other.settings &&
          triggers == other.triggers &&
          variables == other.variables &&
          zarazVersion == other.zarazVersion &&
          tools == other.tools; } 
@override int get hashCode { return Object.hash(analytics, consent, dataLayer, debugKey, historyChange, settings, triggers, variables, zarazVersion, tools); } 
@override String toString() { return 'ZarazZarazConfigReturn(analytics: $analytics, consent: $consent, dataLayer: $dataLayer, debugKey: $debugKey, historyChange: $historyChange, settings: $settings, triggers: $triggers, variables: $variables, zarazVersion: $zarazVersion, tools: $tools)'; } 
 }
