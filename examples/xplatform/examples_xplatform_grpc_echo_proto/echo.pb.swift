// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: examples/xplatform/grpc/echo.proto
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

public struct RulesSwift_Examples_Grpc_EchoRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var contents: String = String()

  public var extra: SwiftProtobuf.Google_Protobuf_Any {
    get {return _extra ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_extra = newValue}
  }
  /// Returns true if `extra` has been explicitly set.
  public var hasExtra: Bool {return self._extra != nil}
  /// Clears the value of `extra`. Subsequent reads from it will return its default value.
  public mutating func clearExtra() {self._extra = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _extra: SwiftProtobuf.Google_Protobuf_Any? = nil
}

public struct RulesSwift_Examples_Grpc_EchoResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var contents: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension RulesSwift_Examples_Grpc_EchoRequest: @unchecked Sendable {}
extension RulesSwift_Examples_Grpc_EchoResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "rules_swift.examples.grpc"

extension RulesSwift_Examples_Grpc_EchoRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EchoRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "contents"),
    2: .same(proto: "extra"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.contents) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._extra) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.contents.isEmpty {
      try visitor.visitSingularStringField(value: self.contents, fieldNumber: 1)
    }
    try { if let v = self._extra {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: RulesSwift_Examples_Grpc_EchoRequest, rhs: RulesSwift_Examples_Grpc_EchoRequest) -> Bool {
    if lhs.contents != rhs.contents {return false}
    if lhs._extra != rhs._extra {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension RulesSwift_Examples_Grpc_EchoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EchoResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "contents"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.contents) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.contents.isEmpty {
      try visitor.visitSingularStringField(value: self.contents, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: RulesSwift_Examples_Grpc_EchoResponse, rhs: RulesSwift_Examples_Grpc_EchoResponse) -> Bool {
    if lhs.contents != rhs.contents {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
