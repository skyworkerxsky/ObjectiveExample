//
//  main.m
//  App1
//
//  Created by Алексей Макаров on 04.08.2022.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    // 1 Example
    @autoreleasepool {
        int val1, val2, sum;
        
        val1 = 10;
        val2 = 15;
        sum = val1 + val2;
        
        NSLog(@"1.example result: %i - %i = %i", val1, val2, sum);
    }
    
    // 2 Example
    @autoreleasepool {
        int i;
        
        i = 1;
        
        NSLog(@"2.example ...%i", i);
        NSLog(@"2.example ...%i", i + 1);
        NSLog(@"2.example ...%i", i + 2);
    }
    
    // 3 Example
    @autoreleasepool {
        int result;
        int val1, val2;
        
        val1 = 87;
        val2 = 15;
        result = val1 - val2;
        
        NSLog(@"3.example result: %i", result);
    }
    
    // 4 Example
    @autoreleasepool {
        int answer, result;
        
        answer = 100;
        result = answer - 10;
        
        NSLog(@"4.example result: %i\n", result + 5);
    }
    
    return 0;
}
