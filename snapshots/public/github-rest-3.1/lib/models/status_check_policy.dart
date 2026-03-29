// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'status_check_policy_checks.dart';/// Status Check Policy
final class StatusCheckPolicy {const StatusCheckPolicy({required this.url, required this.strict, required this.contexts, required this.checks, required this.contextsUrl, });

factory StatusCheckPolicy.fromJson(Map<String, dynamic> json) { return StatusCheckPolicy(
  url: Uri.parse(json['url'] as String),
  strict: json['strict'] as bool,
  contexts: (json['contexts'] as List<dynamic>).map((e) => e as String).toList(),
  checks: (json['checks'] as List<dynamic>).map((e) => StatusCheckPolicyChecks.fromJson(e as Map<String, dynamic>)).toList(),
  contextsUrl: Uri.parse(json['contexts_url'] as String),
); }

final Uri url;

final bool strict;

final List<String> contexts;

final List<StatusCheckPolicyChecks> checks;

final Uri contextsUrl;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
  'strict': strict,
  'contexts': contexts,
  'checks': checks.map((e) => e.toJson()).toList(),
  'contexts_url': contextsUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String &&
      json.containsKey('strict') && json['strict'] is bool &&
      json.containsKey('contexts') &&
      json.containsKey('checks') &&
      json.containsKey('contexts_url') && json['contexts_url'] is String; } 
StatusCheckPolicy copyWith({Uri? url, bool? strict, List<String>? contexts, List<StatusCheckPolicyChecks>? checks, Uri? contextsUrl, }) { return StatusCheckPolicy(
  url: url ?? this.url,
  strict: strict ?? this.strict,
  contexts: contexts ?? this.contexts,
  checks: checks ?? this.checks,
  contextsUrl: contextsUrl ?? this.contextsUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StatusCheckPolicy &&
          url == other.url &&
          strict == other.strict &&
          listEquals(contexts, other.contexts) &&
          listEquals(checks, other.checks) &&
          contextsUrl == other.contextsUrl; } 
@override int get hashCode { return Object.hash(url, strict, Object.hashAll(contexts), Object.hashAll(checks), contextsUrl); } 
@override String toString() { return 'StatusCheckPolicy(url: $url, strict: $strict, contexts: $contexts, checks: $checks, contextsUrl: $contextsUrl)'; } 
 }
