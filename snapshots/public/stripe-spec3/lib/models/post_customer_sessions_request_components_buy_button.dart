// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostCustomerSessionsRequestComponentsBuyButton {const PostCustomerSessionsRequestComponentsBuyButton({required this.enabled});

factory PostCustomerSessionsRequestComponentsBuyButton.fromJson(Map<String, dynamic> json) { return PostCustomerSessionsRequestComponentsBuyButton(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostCustomerSessionsRequestComponentsBuyButton copyWith({bool? enabled}) { return PostCustomerSessionsRequestComponentsBuyButton(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomerSessionsRequestComponentsBuyButton &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'PostCustomerSessionsRequestComponentsBuyButton(enabled: $enabled)'; } 
 }
