// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CcInstanceTypeVariant1 {const CcInstanceTypeVariant1._(this.value);

factory CcInstanceTypeVariant1.fromJson(String json) { return switch (json) {
  'lite' => lite,
  'basic' => basic,
  'standard-1' => standard1,
  'standard-2' => standard2,
  'standard-3' => standard3,
  'standard-4' => standard4,
  _ => CcInstanceTypeVariant1._(json),
}; }

static const CcInstanceTypeVariant1 lite = CcInstanceTypeVariant1._('lite');

static const CcInstanceTypeVariant1 basic = CcInstanceTypeVariant1._('basic');

static const CcInstanceTypeVariant1 standard1 = CcInstanceTypeVariant1._('standard-1');

static const CcInstanceTypeVariant1 standard2 = CcInstanceTypeVariant1._('standard-2');

static const CcInstanceTypeVariant1 standard3 = CcInstanceTypeVariant1._('standard-3');

static const CcInstanceTypeVariant1 standard4 = CcInstanceTypeVariant1._('standard-4');

static const List<CcInstanceTypeVariant1> values = [lite, basic, standard1, standard2, standard3, standard4];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CcInstanceTypeVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CcInstanceTypeVariant1($value)'; } 
 }
/// The instance type will be used to configure vCPU, memory, and disk.
/// 
/// - "lite": 1/16 vCPU, 256 MiB memory, 2 GB disk
/// - "basic": 1/4 vCPU, 1 GiB memory, 4 GB disk
/// - "standard-1": 1/2 vCPU, 4 GiB memory, 8 GB disk
/// - "standard-2": 1 vCPU, 6 GiB memory, 12 GB disk
/// - "standard-3": 2 vCPU, 8 GiB memory, 16 GB disk
/// - "standard-4": 4 vCPU, 12 GiB memory, 20 GB disk
/// 
final class CcInstanceType {const CcInstanceType({this.ccInstanceTypeVariant1});

factory CcInstanceType.fromJson(dynamic json) { return CcInstanceType(
  ccInstanceTypeVariant1: json is String ? CcInstanceTypeVariant1.fromJson(json) : null,
); }

final CcInstanceTypeVariant1? ccInstanceTypeVariant1;

/// At least one variant must be present.
bool get isValid { return ccInstanceTypeVariant1 != null; } 
Map<String, dynamic> toJson() { return {
  if (ccInstanceTypeVariant1 != null) 'ccInstanceTypeVariant1': ccInstanceTypeVariant1!.toJson(),
}; } 
 }
