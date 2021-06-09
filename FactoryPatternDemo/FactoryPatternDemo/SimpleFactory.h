//
//  SimpleFactory.h
//  FactoryPatternDemo
//
//  Created by young_jerry on 2021/6/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SimpleFactory : NSObject

+ (id)createCalcute:(NSString *)calculatetype;

@end

NS_ASSUME_NONNULL_END
