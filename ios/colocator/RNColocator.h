#import <React/RCTBridgeModule.h>
#import "CCLocation.h"
@import CoreLocation;

@interface RNColocator : NSObject <RCTBridgeModule>
@end

CLLocationManager* locManager;
CCLocation* ccLocation;
