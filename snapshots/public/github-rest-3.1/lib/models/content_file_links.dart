// GENERATED CODE - DO NOT MODIFY BY HAND

final class ContentFileLinks {const ContentFileLinks({required this.git, required this.html, required this.self, });

factory ContentFileLinks.fromJson(Map<String, dynamic> json) { return ContentFileLinks(
  git: json['git'] != null ? Uri.parse(json['git'] as String) : null,
  html: json['html'] != null ? Uri.parse(json['html'] as String) : null,
  self: Uri.parse(json['self'] as String),
); }

final Uri? git;

final Uri? html;

final Uri self;

Map<String, dynamic> toJson() { return {
  if (git != null) 'git': git?.toString(),
  if (html != null) 'html': html?.toString(),
  'self': self.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('git') && json['git'] is String &&
      json.containsKey('html') && json['html'] is String &&
      json.containsKey('self') && json['self'] is String; } 
ContentFileLinks copyWith({Uri? Function()? git, Uri? Function()? html, Uri? self, }) { return ContentFileLinks(
  git: git != null ? git() : this.git,
  html: html != null ? html() : this.html,
  self: self ?? this.self,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContentFileLinks &&
          git == other.git &&
          html == other.html &&
          self == other.self; } 
@override int get hashCode { return Object.hash(git, html, self); } 
@override String toString() { return 'ContentFileLinks(git: $git, html: $html, self: $self)'; } 
 }
