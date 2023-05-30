//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: examples/xplatform/grpc/echo.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf
import examples_xplatform_grpc_echo_proto


/// Usage: instantiate `RulesSwift_Examples_Grpc_EchoServiceClient`, then call methods of this protocol to make API calls.
public protocol RulesSwift_Examples_Grpc_EchoServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol? { get }

  func echo(
    _ request: RulesSwift_Examples_Grpc_EchoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<RulesSwift_Examples_Grpc_EchoRequest, RulesSwift_Examples_Grpc_EchoResponse>
}

extension RulesSwift_Examples_Grpc_EchoServiceClientProtocol {
  public var serviceName: String {
    return "rules_swift.examples.grpc.EchoService"
  }

  /// Unary call to Echo
  ///
  /// - Parameters:
  ///   - request: Request to send to Echo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func echo(
    _ request: RulesSwift_Examples_Grpc_EchoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<RulesSwift_Examples_Grpc_EchoRequest, RulesSwift_Examples_Grpc_EchoResponse> {
    return self.makeUnaryCall(
      path: RulesSwift_Examples_Grpc_EchoServiceClientMetadata.Methods.echo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEchoInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension RulesSwift_Examples_Grpc_EchoServiceClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "RulesSwift_Examples_Grpc_EchoServiceNIOClient")
public final class RulesSwift_Examples_Grpc_EchoServiceClient: RulesSwift_Examples_Grpc_EchoServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol?
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  public var interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the rules_swift.examples.grpc.EchoService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

public struct RulesSwift_Examples_Grpc_EchoServiceNIOClient: RulesSwift_Examples_Grpc_EchoServiceClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the rules_swift.examples.grpc.EchoService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public protocol RulesSwift_Examples_Grpc_EchoServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol? { get }

  func makeEchoCall(
    _ request: RulesSwift_Examples_Grpc_EchoRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<RulesSwift_Examples_Grpc_EchoRequest, RulesSwift_Examples_Grpc_EchoResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension RulesSwift_Examples_Grpc_EchoServiceAsyncClientProtocol {
  public static var serviceDescriptor: GRPCServiceDescriptor {
    return RulesSwift_Examples_Grpc_EchoServiceClientMetadata.serviceDescriptor
  }

  public var interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  public func makeEchoCall(
    _ request: RulesSwift_Examples_Grpc_EchoRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<RulesSwift_Examples_Grpc_EchoRequest, RulesSwift_Examples_Grpc_EchoResponse> {
    return self.makeAsyncUnaryCall(
      path: RulesSwift_Examples_Grpc_EchoServiceClientMetadata.Methods.echo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEchoInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension RulesSwift_Examples_Grpc_EchoServiceAsyncClientProtocol {
  public func echo(
    _ request: RulesSwift_Examples_Grpc_EchoRequest,
    callOptions: CallOptions? = nil
  ) async throws -> RulesSwift_Examples_Grpc_EchoResponse {
    return try await self.performAsyncUnaryCall(
      path: RulesSwift_Examples_Grpc_EchoServiceClientMetadata.Methods.echo.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeEchoInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
public struct RulesSwift_Examples_Grpc_EchoServiceAsyncClient: RulesSwift_Examples_Grpc_EchoServiceAsyncClientProtocol {
  public var channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol?

  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

public protocol RulesSwift_Examples_Grpc_EchoServiceClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'echo'.
  func makeEchoInterceptors() -> [ClientInterceptor<RulesSwift_Examples_Grpc_EchoRequest, RulesSwift_Examples_Grpc_EchoResponse>]
}

public enum RulesSwift_Examples_Grpc_EchoServiceClientMetadata {
  public static let serviceDescriptor = GRPCServiceDescriptor(
    name: "EchoService",
    fullName: "rules_swift.examples.grpc.EchoService",
    methods: [
      RulesSwift_Examples_Grpc_EchoServiceClientMetadata.Methods.echo,
    ]
  )

  public enum Methods {
    public static let echo = GRPCMethodDescriptor(
      name: "Echo",
      path: "/rules_swift.examples.grpc.EchoService/Echo",
      type: GRPCCallType.unary
    )
  }
}

