// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_schedule_details_phases_automatic_tax_liability.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTax {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTax({required this.enabled, this.liability, });

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTax.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTax(
  enabled: json['enabled'] as bool,
  liability: json['liability'] != null ? PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability.fromJson(json['liability'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability? liability;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (liability != null) 'liability': liability?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTax copyWith({bool? enabled, PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability Function()? liability, }) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTax(
  enabled: enabled ?? this.enabled,
  liability: liability != null ? liability() : this.liability,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTax &&
          enabled == other.enabled &&
          liability == other.liability; } 
@override int get hashCode { return Object.hash(enabled, liability); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTax(enabled: $enabled, liability: $liability)'; } 
 }
