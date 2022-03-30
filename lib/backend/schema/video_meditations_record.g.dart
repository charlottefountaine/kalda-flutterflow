// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_meditations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoMeditationsRecord> _$videoMeditationsRecordSerializer =
    new _$VideoMeditationsRecordSerializer();

class _$VideoMeditationsRecordSerializer
    implements StructuredSerializer<VideoMeditationsRecord> {
  @override
  final Iterable<Type> types = const [
    VideoMeditationsRecord,
    _$VideoMeditationsRecord
  ];
  @override
  final String wireName = 'VideoMeditationsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, VideoMeditationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.videoName;
    if (value != null) {
      result
        ..add('videoName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoLink;
    if (value != null) {
      result
        ..add('videoLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoIndex;
    if (value != null) {
      result
        ..add('videoIndex')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  VideoMeditationsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoMeditationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'videoName':
          result.videoName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'videoLink':
          result.videoLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'videoIndex':
          result.videoIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$VideoMeditationsRecord extends VideoMeditationsRecord {
  @override
  final String videoName;
  @override
  final String videoLink;
  @override
  final int videoIndex;
  @override
  final DocumentReference<Object> reference;

  factory _$VideoMeditationsRecord(
          [void Function(VideoMeditationsRecordBuilder) updates]) =>
      (new VideoMeditationsRecordBuilder()..update(updates)).build();

  _$VideoMeditationsRecord._(
      {this.videoName, this.videoLink, this.videoIndex, this.reference})
      : super._();

  @override
  VideoMeditationsRecord rebuild(
          void Function(VideoMeditationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoMeditationsRecordBuilder toBuilder() =>
      new VideoMeditationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoMeditationsRecord &&
        videoName == other.videoName &&
        videoLink == other.videoLink &&
        videoIndex == other.videoIndex &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, videoName.hashCode), videoLink.hashCode),
            videoIndex.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideoMeditationsRecord')
          ..add('videoName', videoName)
          ..add('videoLink', videoLink)
          ..add('videoIndex', videoIndex)
          ..add('reference', reference))
        .toString();
  }
}

class VideoMeditationsRecordBuilder
    implements Builder<VideoMeditationsRecord, VideoMeditationsRecordBuilder> {
  _$VideoMeditationsRecord _$v;

  String _videoName;
  String get videoName => _$this._videoName;
  set videoName(String videoName) => _$this._videoName = videoName;

  String _videoLink;
  String get videoLink => _$this._videoLink;
  set videoLink(String videoLink) => _$this._videoLink = videoLink;

  int _videoIndex;
  int get videoIndex => _$this._videoIndex;
  set videoIndex(int videoIndex) => _$this._videoIndex = videoIndex;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VideoMeditationsRecordBuilder() {
    VideoMeditationsRecord._initializeBuilder(this);
  }

  VideoMeditationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _videoName = $v.videoName;
      _videoLink = $v.videoLink;
      _videoIndex = $v.videoIndex;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoMeditationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoMeditationsRecord;
  }

  @override
  void update(void Function(VideoMeditationsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideoMeditationsRecord build() {
    final _$result = _$v ??
        new _$VideoMeditationsRecord._(
            videoName: videoName,
            videoLink: videoLink,
            videoIndex: videoIndex,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
