//  Item.m
//  RandomItems
#import "Item.h"

@implementation Item


{
    NSString *_name;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

- (void)setName:(NSString *)str {
    _name = str;
}
- (NSString *)name {
    return _name;
}
- (void)setSerialNumber:(NSString *)str {
    _serialNumber = str;
}
- (NSString *)serialNumber {
    return _serialNumber;
}
- (void)setValueInDollars:(int)v {
    _valueInDollars = v;
}
- (int)valueInDollars {
    return _valueInDollars;
}
- (NSDate *)dateCreated {
    return _dateCreated;
}

- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
     self.name,
     self.serialNumber,
     self.valueInDollars,
     self.dateCreated];
    return descriptionString;
}


- (instancetype)initWithName:(NSString *)name
              valueInDollars:(int)value
                serialNumber:(NSString *)sNumber
{
    self = [super init];
    if (self) {
        _name = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}


- (instancetype)initWithName:(NSString *)name {
    return [self initWithName:name
               valueInDollars:0
                 serialNumber:@""];
}

- (instancetype)init {
    return [self initWithName:@"Item"];
}


+ (instancetype)randomItem {
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    unsigned int adjectiveIndex =
    arc4random_uniform((unsigned int)[randomAdjectiveList count]);
    unsigned int nounIndex =
    arc4random_uniform((unsigned int)[randomNounList count]);
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    
    
    int randomValue = arc4random_uniform(100);
    NSString *randomSerialNumber = [[[NSUUID UUID] UUIDString] substringToIndex:5];
    Item *newItem = [[self alloc] initWithName:randomName
                                valueInDollars:randomValue
                                  serialNumber:randomSerialNumber];
    return newItem;
}


@end
