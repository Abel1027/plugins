// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v3.2.9), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import
import 'dart:async';
import 'dart:typed_data' show Uint8List, Int32List, Int64List, Float64List;

import 'package:flutter/foundation.dart' show WriteBuffer, ReadBuffer;
import 'package:flutter/services.dart';

class CameraPermissionsErrorData {
  CameraPermissionsErrorData({
    required this.errorCode,
    required this.description,
  });

  String errorCode;
  String description;

  Object encode() {
    final Map<Object?, Object?> pigeonMap = <Object?, Object?>{};
    pigeonMap['errorCode'] = errorCode;
    pigeonMap['description'] = description;
    return pigeonMap;
  }

  static CameraPermissionsErrorData decode(Object message) {
    final Map<Object?, Object?> pigeonMap = message as Map<Object?, Object?>;
    return CameraPermissionsErrorData(
      errorCode: pigeonMap['errorCode']! as String,
      description: pigeonMap['description']! as String,
    );
  }
}

class _JavaObjectHostApiCodec extends StandardMessageCodec {
  const _JavaObjectHostApiCodec();
}

class JavaObjectHostApi {
  /// Constructor for [JavaObjectHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  JavaObjectHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _JavaObjectHostApiCodec();

  Future<void> dispose(int arg_identifier) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.JavaObjectHostApi.dispose', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_identifier]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }
}

class _JavaObjectFlutterApiCodec extends StandardMessageCodec {
  const _JavaObjectFlutterApiCodec();
}

abstract class JavaObjectFlutterApi {
  static const MessageCodec<Object?> codec = _JavaObjectFlutterApiCodec();

  void dispose(int identifier);
  static void setup(JavaObjectFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.JavaObjectFlutterApi.dispose', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.JavaObjectFlutterApi.dispose was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_identifier = (args[0] as int?);
          assert(arg_identifier != null,
              'Argument for dev.flutter.pigeon.JavaObjectFlutterApi.dispose was null, expected non-null int.');
          api.dispose(arg_identifier!);
          return;
        });
      }
    }
  }
}

class _CameraInfoHostApiCodec extends StandardMessageCodec {
  const _CameraInfoHostApiCodec();
}

class CameraInfoHostApi {
  /// Constructor for [CameraInfoHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  CameraInfoHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _CameraInfoHostApiCodec();

  Future<int> getSensorRotationDegrees(int arg_identifier) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CameraInfoHostApi.getSensorRotationDegrees', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_identifier]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as int?)!;
    }
  }
}

class _CameraInfoFlutterApiCodec extends StandardMessageCodec {
  const _CameraInfoFlutterApiCodec();
}

abstract class CameraInfoFlutterApi {
  static const MessageCodec<Object?> codec = _CameraInfoFlutterApiCodec();

  void create(int identifier);
  static void setup(CameraInfoFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.CameraInfoFlutterApi.create', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.CameraInfoFlutterApi.create was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_identifier = (args[0] as int?);
          assert(arg_identifier != null,
              'Argument for dev.flutter.pigeon.CameraInfoFlutterApi.create was null, expected non-null int.');
          api.create(arg_identifier!);
          return;
        });
      }
    }
  }
}

class _CameraSelectorHostApiCodec extends StandardMessageCodec {
  const _CameraSelectorHostApiCodec();
}

class CameraSelectorHostApi {
  /// Constructor for [CameraSelectorHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  CameraSelectorHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _CameraSelectorHostApiCodec();

  Future<void> create(int arg_identifier, int? arg_lensFacing) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CameraSelectorHostApi.create', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_identifier, arg_lensFacing])
            as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<List<int?>> filter(
      int arg_identifier, List<int?> arg_cameraInfoIds) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CameraSelectorHostApi.filter', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_identifier, arg_cameraInfoIds])
            as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as List<Object?>?)!.cast<int?>();
    }
  }
}

class _CameraSelectorFlutterApiCodec extends StandardMessageCodec {
  const _CameraSelectorFlutterApiCodec();
}

abstract class CameraSelectorFlutterApi {
  static const MessageCodec<Object?> codec = _CameraSelectorFlutterApiCodec();

  void create(int identifier, int? lensFacing);
  static void setup(CameraSelectorFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.CameraSelectorFlutterApi.create', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.CameraSelectorFlutterApi.create was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_identifier = (args[0] as int?);
          assert(arg_identifier != null,
              'Argument for dev.flutter.pigeon.CameraSelectorFlutterApi.create was null, expected non-null int.');
          final int? arg_lensFacing = (args[1] as int?);
          api.create(arg_identifier!, arg_lensFacing);
          return;
        });
      }
    }
  }
}

class _ProcessCameraProviderHostApiCodec extends StandardMessageCodec {
  const _ProcessCameraProviderHostApiCodec();
}

class ProcessCameraProviderHostApi {
  /// Constructor for [ProcessCameraProviderHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  ProcessCameraProviderHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec =
      _ProcessCameraProviderHostApiCodec();

  Future<int> getInstance() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProcessCameraProviderHostApi.getInstance', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as int?)!;
    }
  }

  Future<List<int?>> getAvailableCameraInfos(int arg_identifier) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProcessCameraProviderHostApi.getAvailableCameraInfos',
        codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_identifier]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as List<Object?>?)!.cast<int?>();
    }
  }

  Future<int> bindToLifecycle(int arg_identifier,
      int arg_cameraSelectorIdentifier, List<int?> arg_useCaseIds) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProcessCameraProviderHostApi.bindToLifecycle',
        codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap = await channel.send(<Object?>[
      arg_identifier,
      arg_cameraSelectorIdentifier,
      arg_useCaseIds
    ]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else if (replyMap['result'] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyMap['result'] as int?)!;
    }
  }

  Future<void> unbind(int arg_identifier, List<int?> arg_useCaseIds) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProcessCameraProviderHostApi.unbind', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_identifier, arg_useCaseIds])
            as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> unbindAll(int arg_identifier) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.ProcessCameraProviderHostApi.unbindAll', codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_identifier]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }
}

class _ProcessCameraProviderFlutterApiCodec extends StandardMessageCodec {
  const _ProcessCameraProviderFlutterApiCodec();
}

abstract class ProcessCameraProviderFlutterApi {
  static const MessageCodec<Object?> codec =
      _ProcessCameraProviderFlutterApiCodec();

  void create(int identifier);
  static void setup(ProcessCameraProviderFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.ProcessCameraProviderFlutterApi.create', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.ProcessCameraProviderFlutterApi.create was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_identifier = (args[0] as int?);
          assert(arg_identifier != null,
              'Argument for dev.flutter.pigeon.ProcessCameraProviderFlutterApi.create was null, expected non-null int.');
          api.create(arg_identifier!);
          return;
        });
      }
    }
  }
}

class _CameraFlutterApiCodec extends StandardMessageCodec {
  const _CameraFlutterApiCodec();
}

abstract class CameraFlutterApi {
  static const MessageCodec<Object?> codec = _CameraFlutterApiCodec();

  void create(int identifier);
  static void setup(CameraFlutterApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.CameraFlutterApi.create', codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.CameraFlutterApi.create was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_identifier = (args[0] as int?);
          assert(arg_identifier != null,
              'Argument for dev.flutter.pigeon.CameraFlutterApi.create was null, expected non-null int.');
          api.create(arg_identifier!);
          return;
        });
      }
    }
  }
}

class _SystemServicesHostApiCodec extends StandardMessageCodec {
  const _SystemServicesHostApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is CameraPermissionsErrorData) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return CameraPermissionsErrorData.decode(readValue(buffer)!);

      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class SystemServicesHostApi {
  /// Constructor for [SystemServicesHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  SystemServicesHostApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;

  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _SystemServicesHostApiCodec();

  Future<CameraPermissionsErrorData?> requestCameraPermissions(
      bool arg_enableAudio) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.SystemServicesHostApi.requestCameraPermissions',
        codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap = await channel
        .send(<Object?>[arg_enableAudio]) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return (replyMap['result'] as CameraPermissionsErrorData?);
    }
  }

  Future<void> startListeningForDeviceOrientationChange(
      bool arg_isFrontFacing, int arg_sensorOrientation) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.SystemServicesHostApi.startListeningForDeviceOrientationChange',
        codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(<Object?>[arg_isFrontFacing, arg_sensorOrientation])
            as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }

  Future<void> stopListeningForDeviceOrientationChange() async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.SystemServicesHostApi.stopListeningForDeviceOrientationChange',
        codec,
        binaryMessenger: _binaryMessenger);
    final Map<Object?, Object?>? replyMap =
        await channel.send(null) as Map<Object?, Object?>?;
    if (replyMap == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyMap['error'] != null) {
      final Map<Object?, Object?> error =
          (replyMap['error'] as Map<Object?, Object?>?)!;
      throw PlatformException(
        code: (error['code'] as String?)!,
        message: error['message'] as String?,
        details: error['details'],
      );
    } else {
      return;
    }
  }
}

class _SystemServicesFlutterApiCodec extends StandardMessageCodec {
  const _SystemServicesFlutterApiCodec();
}

abstract class SystemServicesFlutterApi {
  static const MessageCodec<Object?> codec = _SystemServicesFlutterApiCodec();

  void onDeviceOrientationChanged(String orientation);
  static void setup(SystemServicesFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.SystemServicesFlutterApi.onDeviceOrientationChanged',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.SystemServicesFlutterApi.onDeviceOrientationChanged was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_orientation = (args[0] as String?);
          assert(arg_orientation != null,
              'Argument for dev.flutter.pigeon.SystemServicesFlutterApi.onDeviceOrientationChanged was null, expected non-null String.');
          api.onDeviceOrientationChanged(arg_orientation!);
          return;
        });
      }
    }
  }
}
