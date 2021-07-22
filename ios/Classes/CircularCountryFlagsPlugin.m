#import "CircularCountryFlagsPlugin.h"
#if __has_include(<circular_country_flags/circular_country_flags-Swift.h>)
#import <circular_country_flags/circular_country_flags-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "circular_country_flags-Swift.h"
#endif

@implementation CircularCountryFlagsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCircularCountryFlagsPlugin registerWithRegistrar:registrar];
}
@end
