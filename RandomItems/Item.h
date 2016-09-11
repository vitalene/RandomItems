//
//  Item.h
//  RandomItems


#import <Foundation/Foundation.h>

@interface Item : NSObject {
    NSString *_name;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    Item *_containedItem;
    Item *_container;
}


- (void)setName:(NSString *)str;
- (NSString *)name;
- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;
- (void)setValueInDollars:(int)v;
- (int)valueInDollars;
- (NSDate *)dateCreated;
+ (instancetype)randomItem;

- (void)setContainedItem:(Item *)item;
- (Item *)containedItem;
- (void)setContainer:(Item *)item;
- (Item *)container;


- (instancetype)initWithName:(NSString *)name
              valueInDollars:(int)value
                serialNumber:(NSString *)sNumber NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithName:(NSString *)name;


@end
