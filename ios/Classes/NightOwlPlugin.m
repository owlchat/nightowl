#import "NightOwlPlugin.h"
#if __has_include(<night_owl/night_owl-Swift.h>)
#import <night_owl/night_owl-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "night_owl-Swift.h"
#endif

@implementation NightOwlPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNightOwlPlugin registerWithRegistrar:registrar];
}
@end
