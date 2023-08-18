// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Settings/VoiceAndVideo.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// ====== Voice and Video ====== //
public struct VoiceAndVideoSettings {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var videoBackgroundFilterDesktop: VoiceAndVideoSettings.OneOf_VideoBackgroundFilterDesktop? = nil

  public var blur: VideoFilterBackgroundBlur {
    get {
      if case .blur(let v)? = videoBackgroundFilterDesktop {return v}
      return VideoFilterBackgroundBlur()
    }
    set {videoBackgroundFilterDesktop = .blur(newValue)}
  }

  public var presetOption: UInt32 {
    get {
      if case .presetOption(let v)? = videoBackgroundFilterDesktop {return v}
      return 0
    }
    set {videoBackgroundFilterDesktop = .presetOption(newValue)}
  }

  public var customAsset: VideoFilterAsset {
    get {
      if case .customAsset(let v)? = videoBackgroundFilterDesktop {return v}
      return VideoFilterAsset()
    }
    set {videoBackgroundFilterDesktop = .customAsset(newValue)}
  }

  public var alwaysPreviewVideo: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _alwaysPreviewVideo ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_alwaysPreviewVideo = newValue}
  }
  /// Returns true if `alwaysPreviewVideo` has been explicitly set.
  public var hasAlwaysPreviewVideo: Bool {return self._alwaysPreviewVideo != nil}
  /// Clears the value of `alwaysPreviewVideo`. Subsequent reads from it will return its default value.
  public mutating func clearAlwaysPreviewVideo() {self._alwaysPreviewVideo = nil}

  public var afkTimeout: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _afkTimeout ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_afkTimeout = newValue}
  }
  /// Returns true if `afkTimeout` has been explicitly set.
  public var hasAfkTimeout: Bool {return self._afkTimeout != nil}
  /// Clears the value of `afkTimeout`. Subsequent reads from it will return its default value.
  public mutating func clearAfkTimeout() {self._afkTimeout = nil}

  public var streamNotificationsEnabled: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _streamNotificationsEnabled ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_streamNotificationsEnabled = newValue}
  }
  /// Returns true if `streamNotificationsEnabled` has been explicitly set.
  public var hasStreamNotificationsEnabled: Bool {return self._streamNotificationsEnabled != nil}
  /// Clears the value of `streamNotificationsEnabled`. Subsequent reads from it will return its default value.
  public mutating func clearStreamNotificationsEnabled() {self._streamNotificationsEnabled = nil}

  public var nativePhoneIntegrationEnabled: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _nativePhoneIntegrationEnabled ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_nativePhoneIntegrationEnabled = newValue}
  }
  /// Returns true if `nativePhoneIntegrationEnabled` has been explicitly set.
  public var hasNativePhoneIntegrationEnabled: Bool {return self._nativePhoneIntegrationEnabled != nil}
  /// Clears the value of `nativePhoneIntegrationEnabled`. Subsequent reads from it will return its default value.
  public mutating func clearNativePhoneIntegrationEnabled() {self._nativePhoneIntegrationEnabled = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_VideoBackgroundFilterDesktop: Equatable {
    case blur(VideoFilterBackgroundBlur)
    case presetOption(UInt32)
    case customAsset(VideoFilterAsset)

  #if !swift(>=4.1)
    public static func ==(lhs: VoiceAndVideoSettings.OneOf_VideoBackgroundFilterDesktop, rhs: VoiceAndVideoSettings.OneOf_VideoBackgroundFilterDesktop) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.blur, .blur): return {
        guard case .blur(let l) = lhs, case .blur(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.presetOption, .presetOption): return {
        guard case .presetOption(let l) = lhs, case .presetOption(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.customAsset, .customAsset): return {
        guard case .customAsset(let l) = lhs, case .customAsset(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _alwaysPreviewVideo: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
  fileprivate var _afkTimeout: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  fileprivate var _streamNotificationsEnabled: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
  fileprivate var _nativePhoneIntegrationEnabled: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
}

public struct VideoFilterBackgroundBlur {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var useBlur: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct VideoFilterAsset {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: UInt64 = 0

  public var assetHash: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension VoiceAndVideoSettings: @unchecked Sendable {}
extension VoiceAndVideoSettings.OneOf_VideoBackgroundFilterDesktop: @unchecked Sendable {}
extension VideoFilterBackgroundBlur: @unchecked Sendable {}
extension VideoFilterAsset: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension VoiceAndVideoSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "VoiceAndVideoSettings"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "blur"),
    2: .standard(proto: "preset_option"),
    3: .standard(proto: "custom_asset"),
    5: .standard(proto: "always_preview_video"),
    6: .standard(proto: "afk_timeout"),
    7: .standard(proto: "stream_notifications_enabled"),
    8: .standard(proto: "native_phone_integration_enabled"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: VideoFilterBackgroundBlur?
        var hadOneofValue = false
        if let current = self.videoBackgroundFilterDesktop {
          hadOneofValue = true
          if case .blur(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.videoBackgroundFilterDesktop = .blur(v)
        }
      }()
      case 2: try {
        var v: UInt32?
        try decoder.decodeSingularUInt32Field(value: &v)
        if let v = v {
          if self.videoBackgroundFilterDesktop != nil {try decoder.handleConflictingOneOf()}
          self.videoBackgroundFilterDesktop = .presetOption(v)
        }
      }()
      case 3: try {
        var v: VideoFilterAsset?
        var hadOneofValue = false
        if let current = self.videoBackgroundFilterDesktop {
          hadOneofValue = true
          if case .customAsset(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.videoBackgroundFilterDesktop = .customAsset(v)
        }
      }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._alwaysPreviewVideo) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._afkTimeout) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._streamNotificationsEnabled) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._nativePhoneIntegrationEnabled) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.videoBackgroundFilterDesktop {
    case .blur?: try {
      guard case .blur(let v)? = self.videoBackgroundFilterDesktop else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .presetOption?: try {
      guard case .presetOption(let v)? = self.videoBackgroundFilterDesktop else { preconditionFailure() }
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 2)
    }()
    case .customAsset?: try {
      guard case .customAsset(let v)? = self.videoBackgroundFilterDesktop else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try { if let v = self._alwaysPreviewVideo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._afkTimeout {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try { if let v = self._streamNotificationsEnabled {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._nativePhoneIntegrationEnabled {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: VoiceAndVideoSettings, rhs: VoiceAndVideoSettings) -> Bool {
    if lhs.videoBackgroundFilterDesktop != rhs.videoBackgroundFilterDesktop {return false}
    if lhs._alwaysPreviewVideo != rhs._alwaysPreviewVideo {return false}
    if lhs._afkTimeout != rhs._afkTimeout {return false}
    if lhs._streamNotificationsEnabled != rhs._streamNotificationsEnabled {return false}
    if lhs._nativePhoneIntegrationEnabled != rhs._nativePhoneIntegrationEnabled {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension VideoFilterBackgroundBlur: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "VideoFilterBackgroundBlur"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "use_blur"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.useBlur) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.useBlur != false {
      try visitor.visitSingularBoolField(value: self.useBlur, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: VideoFilterBackgroundBlur, rhs: VideoFilterBackgroundBlur) -> Bool {
    if lhs.useBlur != rhs.useBlur {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension VideoFilterAsset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "VideoFilterAsset"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "asset_hash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFixed64Field(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.assetHash) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.id != 0 {
      try visitor.visitSingularFixed64Field(value: self.id, fieldNumber: 1)
    }
    if !self.assetHash.isEmpty {
      try visitor.visitSingularStringField(value: self.assetHash, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: VideoFilterAsset, rhs: VideoFilterAsset) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.assetHash != rhs.assetHash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
