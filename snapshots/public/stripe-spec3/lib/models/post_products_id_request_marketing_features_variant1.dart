// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostProductsIdRequestMarketingFeaturesVariant1 {const PostProductsIdRequestMarketingFeaturesVariant1({required this.name});

factory PostProductsIdRequestMarketingFeaturesVariant1.fromJson(Map<String, dynamic> json) { return PostProductsIdRequestMarketingFeaturesVariant1(
  name: json['name'] as String,
); }

final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
PostProductsIdRequestMarketingFeaturesVariant1 copyWith({String? name}) { return PostProductsIdRequestMarketingFeaturesVariant1(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostProductsIdRequestMarketingFeaturesVariant1 &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'PostProductsIdRequestMarketingFeaturesVariant1(name: $name)'; } 
 }
