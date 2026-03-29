// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostPricesRequestTransformQuantityRound {const PostPricesRequestTransformQuantityRound._(this.value);

factory PostPricesRequestTransformQuantityRound.fromJson(String json) { return switch (json) {
  'down' => down,
  'up' => up,
  _ => PostPricesRequestTransformQuantityRound._(json),
}; }

static const PostPricesRequestTransformQuantityRound down = PostPricesRequestTransformQuantityRound._('down');

static const PostPricesRequestTransformQuantityRound up = PostPricesRequestTransformQuantityRound._('up');

static const List<PostPricesRequestTransformQuantityRound> values = [down, up];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPricesRequestTransformQuantityRound && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPricesRequestTransformQuantityRound($value)'; } 
 }
/// Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
final class PostPricesRequestTransformQuantity {const PostPricesRequestTransformQuantity({required this.divideBy, required this.round, });

factory PostPricesRequestTransformQuantity.fromJson(Map<String, dynamic> json) { return PostPricesRequestTransformQuantity(
  divideBy: (json['divide_by'] as num).toInt(),
  round: PostPricesRequestTransformQuantityRound.fromJson(json['round'] as String),
); }

final int divideBy;

final PostPricesRequestTransformQuantityRound round;

Map<String, dynamic> toJson() { return {
  'divide_by': divideBy,
  'round': round.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('divide_by') && json['divide_by'] is num &&
      json.containsKey('round'); } 
PostPricesRequestTransformQuantity copyWith({int? divideBy, PostPricesRequestTransformQuantityRound? round, }) { return PostPricesRequestTransformQuantity(
  divideBy: divideBy ?? this.divideBy,
  round: round ?? this.round,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPricesRequestTransformQuantity &&
          divideBy == other.divideBy &&
          round == other.round; } 
@override int get hashCode { return Object.hash(divideBy, round); } 
@override String toString() { return 'PostPricesRequestTransformQuantity(divideBy: $divideBy, round: $round)'; } 
 }
