//
//  main.m
//  DataTypes
//
//  Created by Алексей Макаров on 06.09.2022.
//

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

// методы сумматора
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// арифметические методы
-(double) add: (double) value;
-(double) substract: (double) value;
-(double) multiple: (double) value;
-(double) divide: (double) value;

@end

@implementation Calculator

// MARK: - Объявление членов
{
    double accumulator;
}

// MARK: - Методы сумматора
-(void) setAccumulator: (double) value {
    accumulator = value;
}

-(void) clear {
    accumulator = 0;
}

-(double) accumulator {
    return accumulator;
}

// MARK: - Арифметические методы
-(double) add: (double) value {
    accumulator += value;
    return accumulator;
}

-(double) substract: (double) value {
    accumulator -= value;
    return accumulator;
}

-(double) multiple: (double) value {
    accumulator *= value;
    return accumulator;
}

-(double) divide: (double) value {
    accumulator /= value;
    return accumulator;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Data Types
        int integerVar = 100;
        float floatVar = 1.5;
        double doubleVar = 8.44e+11;
        char charVar = 'V';
        id idVar = nil;
        
        NSLog(@"integerVar = %i", integerVar);
        NSLog(@"floatVar = %f", floatVar);
        NSLog(@"doubleVar = %e", doubleVar);
        NSLog(@"doubleVar = %g", doubleVar);
        NSLog(@"charVar = %c", charVar);
        NSLog(@"idVar = %@", idVar);
        
        float float1 = 123.125, float2;
        int int1, int2 = -150;
        
        // преобразование float в int
        int1 = float1;
        NSLog(@"%f, присвоенное int, дает %i", float1, int1);
        
        // преобразование int в float
        float1 = int2;
        NSLog(@"%i, присвоенное float, дает %f", int2, float1);
        
        // int разделенный на int
        float1 = int2 / 100;
        NSLog(@"%i, разделенное на 100 дает %f", int2, float1);
        
        // int разделенный на float
        float2 = int2 / 100.0;
        NSLog(@"%i, разделенное на 100.0 дает %f",  int2, float2);
        
        // оператор приведения типа
        float2 = (float) int2 / 100;
        NSLog(@"(float) %i, разделенное на 100 дает %f", int2, float2);
        
    // MARK: - Calculator
        
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc add: 200];
//        [deskCalc setAccumulator: 100];
//        [deskCalc divide: 15];
//        [deskCalc substract: 10];
//        [deskCalc multiple: 5];
        
        NSLog(@"Result = %g", [deskCalc accumulator]);
    }
    return 0;
}
