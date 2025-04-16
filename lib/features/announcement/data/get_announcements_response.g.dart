// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_announcements_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAnnouncementsResponseImpl _$$GetAnnouncementsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAnnouncementsResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Announcement.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as bool,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$GetAnnouncementsResponseImplToJson(
        _$GetAnnouncementsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
    };
