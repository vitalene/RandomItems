#import <Foundation/Foundation.h>
#import "Item.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        
        Item *backpack = [[Item alloc] initWithName:@"Backpack"];
        [items addObject:backpack];
        Item *calculator = [[Item alloc] initWithName:@"Calculator"];
        [items addObject:calculator];
        backpack.containedItem = calculator;
        backpack = nil;
        calculator = nil;

        for (Item *item in items) {
            NSLog(@"%@", item);
        }
        
        items = nil;
        
    }
    return 0; }
