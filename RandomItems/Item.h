//
//  Item.h
//  RandomItems


#import <Foundation/Foundation.h>

@interface Item : NSObject


- (void)setName:(NSString *)str;
- (NSString *)name;
- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;
- (void)setValueInDollars:(int)v;
- (int)valueInDollars;
- (NSDate *)dateCreated;
+ (instancetype)randomItem;

- (instancetype)initWithName:(NSString *)name
              valueInDollars:(int)value
                serialNumber:(NSString *)sNumber NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithName:(NSString *)name;


@end
