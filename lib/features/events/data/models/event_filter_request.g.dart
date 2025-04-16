// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_filter_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventFilterRequest _$EventFilterRequestFromJson(Map<String, dynamic> json) =>
    EventFilterRequest(
      startDate: json['start_date'] as String?,
      isAttend: json['is_attend'] as bool?,
      attened: json['attened'] as bool?,
      category: (json['category'] as num?)?.toInt(),
      finished: json['finished'] as bool?,
    );

Map<String, dynamic> _$EventFilterRequestToJson(EventFilterRequest instance) =>
    <String, dynamic>{
      'start_date': instance.startDate,
      'is_attend': EventFilterRequest._boolToInt(instance.isAttend),
      'attened': EventFilterRequest._boolToInt(instance.attened),
      'category': instance.category,
      'finished': EventFilterRequest._boolToInt(instance.finished),
    };
