// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEventResponse _$GetEventResponseFromJson(Map<String, dynamic> json) =>
    GetEventResponse(
      message: json['message'] as String?,
      error: json['error'] as bool?,
      events: (json['data'] as List<dynamic>?)
          ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetEventResponseToJson(GetEventResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'data': instance.events,
    };

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      isFeatured: (json['isFeatured'] as num?)?.toInt(),
      image: json['image'] as String?,
      views: (json['views'] as num?)?.toInt(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      address: json['address'] as String?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : EventState.fromJson(json['state'] as Map<String, dynamic>),
      attended: (json['attended'] as num?)?.toInt(),
      isAttend: (json['isAttend'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'content': instance.content,
      'isFeatured': instance.isFeatured,
      'image': instance.image,
      'views': instance.views,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'address': instance.address,
      'country': instance.country,
      'state': instance.state,
      'attended': instance.attended,
      'isAttend': instance.isAttend,
    };

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
    };

EventState _$EventStateFromJson(Map<String, dynamic> json) => EventState(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$EventStateToJson(EventState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
