#import <Foundation/Foundation.h>
#import "Item.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        
        for (int i = 0; i < 10; i++) {
            Item *item = [Item randomItem];
            [items addObject:item];
        }
        for (Item *item in items) {
            NSLog(@"%@", item);
        }
        
        
        items = nil;
        
    }
    return 0; }
