#import "RNColocator.h"
#import "CCLocation.h"
#import <React/RCTLog.h>

@implementation RNColocator

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(init:(NSString *)endpoint apiKey:(NSString *)apiKey)
{
    RCTLogInfo(@"init/2 endpoint: %@ apiKey: %@", endpoint, apiKey);
    locManager = [[CLLocationManager alloc] init];
    
    [locManager requestWhenInUseAuthorization];
    [locManager requestAlwaysAuthorization];

    ccLocation = [[CCLocation alloc] init];
    
    NSString *deviceId = [ccLocation getDeviceId];
    RCTLogInfo(@"Device: %@", deviceId);
    
    [ccLocation startWithApiKey:apiKey urlString:endpoint];
}

RCT_EXPORT_METHOD(setAlias:(NSString *)key value:(NSString *)value)
{
    RCTLogInfo(@"setAlias/2 key: %@ value: %@", key, value);
    
    NSDictionary *dict = @{ key : value };
    [ccLocation setAliases:dict];
}

RCT_EXPORT_METHOD(destroy)
{
    RCTLogInfo(@"destroy/0");
    
    [ccLocation stop];
}

@end

// public void init(String endpoint, String apiKey) {

//+ (id) sharedManager;
//- (void) startWithApiKey:(NSString*) apiKey urlString:(NSString*) urlString;
//- (void) stop;
//- (NSString*) getDeviceId;
//- (void) sendMarker:(NSString*) message;
//- (void) setAliases:(NSDictionary*) aliases;
