//
//  main.m
//  Objc4Test
//
//  Created by byAlex on 2019/2/21.
//

#import <Foundation/Foundation.h>
#include <objc/runtime.h>
#include <objc/message.h>


#import "TestObject.h"

void functioncall(void(^block)(void));

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        void (^block)(NSString *) = ^(NSString *desc) {
            
            NSString *string = [NSString stringWithFormat:@"%@123456", desc];
            NSLog(@"%@\n", string);
        };
        
        
        if (block) {
            block(@"description");
        }
        
        //        Block_release(block);
        int __block i = 2;
        functioncall(^{ i = 10; });
//    }
        
//        TestObject *obj = [[TestObject alloc] init];
//
//        sleep(10);
//
//        NSLog(@"obj is: %@", obj);
    }
    return 0;
}


void functioncall(void(^block)(void)) {
    if (block) {
        block();
    }
}
