// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mindfulness_sessions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MindfulnessSessionsRecord> _$mindfulnessSessionsRecordSerializer =
    new _$MindfulnessSessionsRecordSerializer();

class _$MindfulnessSessionsRecordSerializer
    implements StructuredSerializer<MindfulnessSessionsRecord> {
  @override
  final Iterable<Type> types = const [
    MindfulnessSessionsRecord,
    _$MindfulnessSessionsRecord
  ];
  @override
  final String wireName = 'MindfulnessSessionsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MindfulnessSessionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.sessionName;
    if (value != null) {
      result
        ..add('sessionName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionLengthMinutes;
    if (value != null) {
      result
        ..add('sessionLengthMinutes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sessionImage;
    if (value != null) {
      result
        ..add('sessionImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionVideo;
    if (value != null) {
      result
        ..add('sessionVideo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  MindfulnessSessionsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MindfulnessSessionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'sessionName':
          result.sessionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sessionLengthMinutes':
          result.sessionLengthMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sessionImage':
          result.sessionImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sessionVideo':
          result.sessionVideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$MindfulnessSessionsRecord extends MindfulnessSessionsRecord {
  @override
  final String sessionName;
  @override
  final int sessionLengthMinutes;
  @override
  final String sessionImage;
  @override
  final String sessionVideo;
  @override
  final DocumentReference<Object> reference;

  factory _$MindfulnessSessionsRecord(
          [void Function(MindfulnessSessionsRecordBuilder) updates]) =>
      (new MindfulnessSessionsRecordBuilder()..update(updates)).build();

  _$MindfulnessSessionsRecord._(
      {this.sessionName,
      this.sessionLengthMinutes,
      this.sessionImage,
      this.sessionVideo,
      this.reference})
      : super._();

  @override
  MindfulnessSessionsRecord rebuild(
          void Function(MindfulnessSessionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MindfulnessSessionsRecordBuilder toBuilder() =>
      new MindfulnessSessionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MindfulnessSessionsRecord &&
        sessionName == other.sessionName &&
        sessionLengthMinutes == other.sessionLengthMinutes &&
        sessionImage == other.sessionImage &&
        sessionVideo == other.sessionVideo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, sessionName.hashCode),
                    sessionLengthMinutes.hashCode),
                sessionImage.hashCode),
            sessionVideo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MindfulnessSessionsRecord')
          ..add('sessionName', sessionName)
          ..add('sessionLengthMinutes', sessionLengthMinutes)
          ..add('sessionImage', sessionImage)
          ..add('sessionVideo', sessionVideo)
          ..add('reference', reference))
        .toString();
  }
}

class MindfulnessSessionsRecordBuilder
    implements
        Builder<MindfulnessSessionsRecord, MindfulnessSessionsRecordBuilder> {
  _$MindfulnessSessionsRecord _$v;

  String _sessionName;
  String get sessionName => _$this._sessionName;
  set sessionName(String sessionName) => _$this._sessionName = sessionName;

  int _sessionLengthMinutes;
  int get sessionLengthMinutes => _$this._sessionLengthMinutes;
  set sessionLengthMinutes(int sessionLengthMinutes) =>
      _$this._sessionLengthMinutes = sessionLengthMinutes;

  String _sessionImage;
  String get sessionImage => _$this._sessionImage;
  set sessionImage(String sessionImage) => _$this._sessionImage = sessionImage;

  String _sessionVideo;
  String get sessionVideo => _$this._sessionVideo;
  set sessionVideo(String sessionVideo) => _$this._sessionVideo = sessionVideo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MindfulnessSessionsRecordBuilder() {
    MindfulnessSessionsRecord._initializeBuilder(this);
  }

  MindfulnessSessionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionName = $v.sessionName;
      _sessionLengthMinutes = $v.sessionLengthMinutes;
      _sessionImage = $v.sessionImage;
      _sessionVideo = $v.sessionVideo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MindfulnessSessionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MindfulnessSessionsRecord;
  }

  @override
  void update(void Function(MindfulnessSessionsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MindfulnessSessionsRecord build() {
    final _$result = _$v ??
        new _$MindfulnessSessionsRecord._(
            sessionName: sessionName,
            sessionLengthMinutes: sessionLengthMinutes,
            sessionImage: sessionImage,
            sessionVideo: sessionVideo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
