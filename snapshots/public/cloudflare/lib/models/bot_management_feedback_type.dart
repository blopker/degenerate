// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of feedback report.
@immutable final class BotManagementFeedbackType {const BotManagementFeedbackType._(this.value);

factory BotManagementFeedbackType.fromJson(String json) {return switch (json) {
  'false_positive' => falsePositive,
  'false_negative' => falseNegative,
  _ => BotManagementFeedbackType._(json),
};}

static const BotManagementFeedbackType falsePositive = BotManagementFeedbackType._('false_positive');

static const BotManagementFeedbackType falseNegative = BotManagementFeedbackType._('false_negative');

static const List<BotManagementFeedbackType> values = [falsePositive, falseNegative];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is BotManagementFeedbackType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'BotManagementFeedbackType($value)';}
}
