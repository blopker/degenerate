// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rule_suite_required_status_checks_checks_app.dart';@immutable final class RuleSuiteRequiredStatusChecksChecks {const RuleSuiteRequiredStatusChecksChecks({this.id, this.context, this.state, this.type, this.app = const Omittable.absent(), });

factory RuleSuiteRequiredStatusChecksChecks.fromJson(Map<String, dynamic> json) { return RuleSuiteRequiredStatusChecksChecks(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  context: json['context'] as String?,
  state: json['state'] as String?,
  type: json['type'] as String?,
  app: json.containsKey('app') ? Omittable(json['app'] != null ? RuleSuiteRequiredStatusChecksChecksApp.fromJson(json['app'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The unique identifier of the status check.
final int? id;

/// The context name of the status check.
final String? context;

/// The state of the status check.
final String? state;

/// The type of the status check.
final String? type;

/// The GitHub App associated with the status check.
final Omittable<RuleSuiteRequiredStatusChecksChecksApp?> app;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'context': ?context,
  'state': ?state,
  'type': ?type,
  if (app.isPresent) 'app': app.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'context', 'state', 'type', 'app'}.contains(key)); } 
RuleSuiteRequiredStatusChecksChecks copyWith({int? Function()? id, String? Function()? context, String? Function()? state, String? Function()? type, Omittable<RuleSuiteRequiredStatusChecksChecksApp?>? app, }) { return RuleSuiteRequiredStatusChecksChecks(
  id: id != null ? id() : this.id,
  context: context != null ? context() : this.context,
  state: state != null ? state() : this.state,
  type: type != null ? type() : this.type,
  app: app ?? this.app,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RuleSuiteRequiredStatusChecksChecks &&
          id == other.id &&
          context == other.context &&
          state == other.state &&
          type == other.type &&
          app == other.app; } 
@override int get hashCode { return Object.hash(id, context, state, type, app); } 
@override String toString() { return 'RuleSuiteRequiredStatusChecksChecks(id: $id, context: $context, state: $state, type: $type, app: $app)'; } 
 }
