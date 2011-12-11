//
//  Stack.m
//  Stack

#import "Stack.h"

const NSUInteger kDefaultCapacity = 10;

@implementation Stack

#pragma mark - Initializations

-(id) initWithCapacity:(NSUInteger) _capacity {
    self = [super init];
    if (self) {
        capacity = _capacity;
        stack = [[NSMutableArray alloc] initWithCapacity:capacity];
    }
    return self;
}

-(id) init {
    self = [super init];
    if (self) {
        capacity = kDefaultCapacity;
        stack = [[NSMutableArray alloc] initWithCapacity:capacity];
    }
    return self;
}

#pragma mark - Stack Functions

-(BOOL) isEmpty {
    return ([stack count] <= 0);
}

-(BOOL) isFull {
    return ([stack count] >= capacity);
}

-(BOOL) push:(id) newItem {
    if ([self isFull] == NO) {
        [stack addObject:newItem];
        return YES;
    }
    return NO;
}

-(id) pop {
    if ([self isEmpty] == NO) {
        id item = [stack lastObject];
        [stack removeLastObject];
        return item;
    }
    return nil;
}

-(id) top {
    return [stack lastObject];
}

-(void) reset {
    [stack removeAllObjects];
    capacity = 0;
}

@end
