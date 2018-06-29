//
//  CCLocation.h
//  CCLocation
//
//  Created by Ralf Kernchen on 20/06/2018.
//  Copyright © 2018 Crowd Connected Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CCLocationSwift;

@interface CCLocation : NSObject

+ (id) sharedManager;
- (void) startWithApiKey:(NSString*) apiKey urlString:(NSString*) urlString;
- (void) stop;
- (NSString*) getDeviceId;
- (void) sendMarker:(NSString*) message;
- (void) setAliases:(NSDictionary*) aliases;

@end
