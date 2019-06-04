//
//  RNCWebview+Plus.h
//  React
//
//  Created by BLUE on 2019/5/24.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

static NSString *BRIDGE_NAME = @"GAOMUAPI_WEBVIEW_BRIDGE";

@interface RNCWebview_Plus : NSObject

// 添加新属性 资源加载路径
@property (nonatomic,copy) NSString *srcPath;
@property (nonatomic,copy) NSString *bodyParamsHeaderKey;

+ (RNCWebview_Plus *)sharedSingleton;

-(void)saveRequestBody:(NSDictionary *)param;
-(NSDictionary *)getRequestBody:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
