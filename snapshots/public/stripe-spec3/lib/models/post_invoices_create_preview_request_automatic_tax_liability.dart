// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType {const PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType._(this.value);

factory PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType.fromJson(String json) { return switch (json) {
  'account' => account,
  'self' => self,
  _ => PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType._(json),
}; }

static const PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType account = PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType._('account');

static const PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType self = PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType._('self');

static const List<PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType> values = [account, self];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType($value)'; } 
 }
final class PostInvoicesCreatePreviewRequestAutomaticTaxLiability {const PostInvoicesCreatePreviewRequestAutomaticTaxLiability({this.account, required this.type, });

factory PostInvoicesCreatePreviewRequestAutomaticTaxLiability.fromJson(Map<String, dynamic> json) { return PostInvoicesCreatePreviewRequestAutomaticTaxLiability(
  account: json['account'] as String?,
  type: PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType.fromJson(json['type'] as String),
); }

final String? account;

final PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType type;

Map<String, dynamic> toJson() { return {
  'account': ?account,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostInvoicesCreatePreviewRequestAutomaticTaxLiability copyWith({String Function()? account, PostInvoicesCreatePreviewRequestAutomaticTaxLiabilityType? type, }) { return PostInvoicesCreatePreviewRequestAutomaticTaxLiability(
  account: account != null ? account() : this.account,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesCreatePreviewRequestAutomaticTaxLiability &&
          account == other.account &&
          type == other.type; } 
@override int get hashCode { return Object.hash(account, type); } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestAutomaticTaxLiability(account: $account, type: $type)'; } 
 }
