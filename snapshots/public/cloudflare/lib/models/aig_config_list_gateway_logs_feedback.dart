// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class AigConfigListGatewayLogsFeedbackVariant1 {const AigConfigListGatewayLogsFeedbackVariant1._(this.value);

factory AigConfigListGatewayLogsFeedbackVariant1.fromJson(double json) { return switch (json) {
  -1 => minus1,
  _ => AigConfigListGatewayLogsFeedbackVariant1._(json),
}; }

static const AigConfigListGatewayLogsFeedbackVariant1 minus1 = AigConfigListGatewayLogsFeedbackVariant1._(-1);

static const List<AigConfigListGatewayLogsFeedbackVariant1> values = [minus1];

final double value;

double toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListGatewayLogsFeedbackVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListGatewayLogsFeedbackVariant1($value)'; } 
 }
final class AigConfigListGatewayLogsFeedbackVariant2 {const AigConfigListGatewayLogsFeedbackVariant2._(this.value);

factory AigConfigListGatewayLogsFeedbackVariant2.fromJson(double json) { return switch (json) {
  0 => $0,
  _ => AigConfigListGatewayLogsFeedbackVariant2._(json),
}; }

static const AigConfigListGatewayLogsFeedbackVariant2 $0 = AigConfigListGatewayLogsFeedbackVariant2._(0);

static const List<AigConfigListGatewayLogsFeedbackVariant2> values = [$0];

final double value;

double toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListGatewayLogsFeedbackVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListGatewayLogsFeedbackVariant2($value)'; } 
 }
final class AigConfigListGatewayLogsFeedbackVariant3 {const AigConfigListGatewayLogsFeedbackVariant3._(this.value);

factory AigConfigListGatewayLogsFeedbackVariant3.fromJson(double json) { return switch (json) {
  1 => $1,
  _ => AigConfigListGatewayLogsFeedbackVariant3._(json),
}; }

static const AigConfigListGatewayLogsFeedbackVariant3 $1 = AigConfigListGatewayLogsFeedbackVariant3._(1);

static const List<AigConfigListGatewayLogsFeedbackVariant3> values = [$1];

final double value;

double toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigListGatewayLogsFeedbackVariant3 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AigConfigListGatewayLogsFeedbackVariant3($value)'; } 
 }
typedef AigConfigListGatewayLogsFeedback = OneOf3<AigConfigListGatewayLogsFeedbackVariant1,AigConfigListGatewayLogsFeedbackVariant2,AigConfigListGatewayLogsFeedbackVariant3>;