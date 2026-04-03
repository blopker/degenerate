// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Status of [Smart Placement](https://developers.cloudflare.com/workers/configuration/smart-placement).
@immutable final class WorkersPlacementStatus {const WorkersPlacementStatus._(this.value);

factory WorkersPlacementStatus.fromJson(String json) { return switch (json) {
  'SUCCESS' => success,
  'UNSUPPORTED_APPLICATION' => unsupportedApplication,
  'INSUFFICIENT_INVOCATIONS' => insufficientInvocations,
  _ => WorkersPlacementStatus._(json),
}; }

static const WorkersPlacementStatus success = WorkersPlacementStatus._('SUCCESS');

static const WorkersPlacementStatus unsupportedApplication = WorkersPlacementStatus._('UNSUPPORTED_APPLICATION');

static const WorkersPlacementStatus insufficientInvocations = WorkersPlacementStatus._('INSUFFICIENT_INVOCATIONS');

static const List<WorkersPlacementStatus> values = [success, unsupportedApplication, insufficientInvocations];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersPlacementStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersPlacementStatus($value)'; } 
 }
