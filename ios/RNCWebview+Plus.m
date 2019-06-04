//
//  RNCWebview+Plus.m
//  React
//
//  Created by BLUE on 2019/5/24.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNCWebview+Plus.h"

@interface RNCWebview_Plus ()

@property (nonatomic, strong) NSMutableDictionary *requestBodyParamsDict;

@end

@implementation RNCWebview_Plus

@synthesize srcPath;

+ (RNCWebview_Plus *)sharedSingleton
{
    static RNCWebview_Plus *sharedSingleton;
  
    @synchronized(self)
    {
        if (!sharedSingleton){
            sharedSingleton = [[RNCWebview_Plus alloc] init];
        }
        return sharedSingleton;
    }
}

-(void)saveRequestBody:(NSDictionary *)param {
    if(self.requestBodyParamsDict==nil){
        self.requestBodyParamsDict = [[NSMutableDictionary alloc] init];
    }

    if(param!=nil && [param isKindOfClass:[NSDictionary class]] && [param count] > 0){
       [self.requestBodyParamsDict addEntriesFromDictionary:param];
    }
}

-(NSDictionary *)getRequestBody:(NSString *)key {
    NSDictionary *dict;
  
    if(key!=nil && ![key isEqualToString:@""]){
        dict = [self.requestBodyParamsDict valueForKey:key];
        [self.requestBodyParamsDict removeObjectForKey:key];
    }
  
    return dict;
}



@end
