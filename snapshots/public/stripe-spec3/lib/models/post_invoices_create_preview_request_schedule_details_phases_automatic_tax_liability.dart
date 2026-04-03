// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType._(this.value);

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType._(json),
}; }

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType account = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType._('account');

static const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType self = PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType._('self');

static const List<PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType($value)'; } 
 }
@immutable final class PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability {const PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability({required this.type, this.account, });

factory PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability(
  account: json['account'] as String?,
  type: PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType.fromJson(json['type'] as String),
); }

final String? account;

final PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability copyWith({String Function()? account, PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiabilityType? type, }) { return PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestScheduleDetailsPhasesAutomaticTaxLiability(account: $account, type: $type)'; } 
 }
