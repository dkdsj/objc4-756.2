//
//  main.m
//  DemoSize
//
//  Created by ZZ on 2019/12/20.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

@interface Person : NSObject

@property (nonatomic) char ch1;//1
@property (nonatomic, assign) short age;//2

@end

@implementation Person
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person alloc];
    }
    return 0;
}
