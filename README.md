# objc4-756.2


### 1.objc4-756.2可编译

### 2.字节对齐
~~~
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
~~~

### 3.libmalloc-内存分析
~~~
void *p = calloc(1, 40);
NSLog(@"%lu", malloc_size(p));
~~~
