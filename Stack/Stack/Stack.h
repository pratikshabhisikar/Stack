//
//  Stack.h
//  Stack

#import <Foundation/Foundation.h>

@interface Stack : NSObject {
    NSMutableArray *stack;
    NSUInteger capacity;
}

-(id) initWithCapacity:(NSUInteger) _capacity;

-(BOOL) isEmpty;
-(BOOL) isFull;
-(BOOL) push:(id) newItem;
-(id) pop;
-(id) top;
-(void) reset;

@end
