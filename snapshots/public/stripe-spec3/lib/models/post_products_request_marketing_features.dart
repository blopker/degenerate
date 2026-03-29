// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostProductsRequestMarketingFeatures {const PostProductsRequestMarketingFeatures({required this.name});

factory PostProductsRequestMarketingFeatures.fromJson(Map<String, dynamic> json) { return PostProductsRequestMarketingFeatures(
  name: json['name'] as String,
); }

final String name;

Map<String, dynamic> toJson() { return {
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
PostProductsRequestMarketingFeatures copyWith({String? name}) { return PostProductsRequestMarketingFeatures(
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostProductsRequestMarketingFeatures &&
          name == other.name; } 
@override int get hashCode { return name.hashCode; } 
@override String toString() { return 'PostProductsRequestMarketingFeatures(name: $name)'; } 
 }
