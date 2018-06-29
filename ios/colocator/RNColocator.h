#import <React/RCTBridgeModule.h>
#import "CCLocation.h"
@import CoreLocation;

@interface RNColocator : NSObject <RCTBridgeModule, CLLocationManagerDelegate>
@end

CLLocationManager* locManager;
CCLocation* ccLocation;
