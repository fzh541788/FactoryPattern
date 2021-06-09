//
//  SimpleFactory.m
//  FactoryPatternDemo
//
//  Created by young_jerry on 2021/6/6.
//

#import "SimpleFactory.h"
#import "AddOfSimple.h"
#import "MinusOfSimple.h"
#import "MultiplyOfSimple.h"
#import "DivideOfSimple.h"

@implementation SimpleFactory
+ (id)createCalcute:(NSString *)calculatetype {
    NSArray *calculateArray = @[@"+",@"-",@"*",@"/"];
    switch ([calculateArray indexOfObject:calculatetype]) {
        case 0:
            return [[AddOfSimple alloc]init];
            break;
        case 1:
            return [[MinusOfSimple alloc]init];
            break;
        case 2:
            return [[MultiplyOfSimple alloc]init];
            break;
        case 3:
            return [[DivideOfSimple alloc]init];
    }
    return NULL;
}
@end
