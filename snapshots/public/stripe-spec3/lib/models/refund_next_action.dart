// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'refund_next_action_display_details.dart';/// 
@immutable final class RefundNextAction {const RefundNextAction({required this.type, this.displayDetails, });

factory RefundNextAction.fromJson(Map<String, dynamic> json) { return RefundNextAction(
  displayDetails: json['display_details'] != null ? RefundNextActionDisplayDetails.fromJson(json['display_details'] as Map<String, dynamic>) : null,
  type: json['type'] as String,
); }

final RefundNextActionDisplayDetails? displayDetails;

/// Type of the next action to perform.
final String type;

Map<String, dynamic> toJson() { return {
  if (displayDetails != null) 'display_details': displayDetails?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
RefundNextAction copyWith({RefundNextActionDisplayDetails Function()? displayDetails, String? type, }) { return RefundNextAction(
  displayDetails: displayDetails != null ? displayDetails() : this.displayDetails,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RefundNextAction &&
          displayDetails == other.displayDetails &&
          type == other.type; } 
@override int get hashCode { return Object.hash(displayDetails, type); } 
@override String toString() { return 'RefundNextAction(displayDetails: $displayDetails, type: $type)'; } 
 }
