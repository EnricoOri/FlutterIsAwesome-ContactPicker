#import "FlutterIsAwesomePlugin.h"
#if __has_include(<flutter_is_awesome/flutter_is_awesome-Swift.h>)
#import <flutter_is_awesome/flutter_is_awesome-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_is_awesome-Swift.h"
#endif

@implementation FlutterIsAwesomePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterIsAwesomePlugin registerWithRegistrar:registrar];
}
@end
