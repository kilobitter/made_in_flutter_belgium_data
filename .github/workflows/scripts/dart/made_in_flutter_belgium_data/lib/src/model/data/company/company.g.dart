// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    allowedKeys: const [
      'name',
      'description',
      'useLogoInsteadOfTextTitle',
      'links',
      'developers',
      'projects',
      'images'
    ],
    requiredKeys: const ['name'],
  );
  return Company(
    name: json['name'] as String,
    description: json['description'] as String?,
    useLogoInsteadOfTextTitle:
        json['useLogoInsteadOfTextTitle'] as bool? ?? false,
    links: json['links'] == null
        ? null
        : CompanyLinks.fromJson(json['links'] as Map<String, dynamic>),
    developers: (json['developers'] as List<dynamic>?)
        ?.map((e) => CompanyDeveloper.fromJson(e as Map<String, dynamic>))
        .toList(),
    projects: (json['projects'] as List<dynamic>?)
        ?.map((e) => MinimizedProject.fromJson(e as Map<String, dynamic>))
        .toList(),
    images: json['images'] == null
        ? null
        : CompanyImages.fromJson(json['images'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CompanyToJson(Company instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'description': instance.description,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('useLogoInsteadOfTextTitle', instance.useLogoInsteadOfTextTitle);
  val['links'] = instance.links?.toJson();
  val['developers'] = instance.developers?.map((e) => e.toJson()).toList();
  writeNotNull('projects', instance.projects?.map((e) => e.toJson()).toList());
  writeNotNull('images', instance.images?.toJson());
  return val;
}
