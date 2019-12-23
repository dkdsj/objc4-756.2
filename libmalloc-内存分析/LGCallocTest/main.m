//
//  main.m
//  LGCallocTest
//
//  Created by cooci on 2019/2/7.
//

#import <Foundation/Foundation.h>
#import <malloc/malloc.h>
#import <math.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
		
		int x = 13;
		int N = 3;
		int n = log2(N);
		
		
		/// 1
		int r1 = (x + N - 1) & (~(N - 1));
		
		/// 2
		int r2 = (x + N - 1) >> n << n;
		
		NSLog(@"比 %d 大且是 %d 的倍数 ：%d %d", x, N, r1, r2);
		
		void *p = calloc(1, 40);
		NSLog(@"%lu",malloc_size(p));
    }
    return 0;
}
