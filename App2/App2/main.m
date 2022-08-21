//
//  main.m
//  App2
//
//  Created by Алексей Макаров on 10.08.2022.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDetorminator: (int) d;
-(int) numerator;
-(int) detorminator;

@end

@implementation Fraction
{
    int numerator, detorminator;
}

-(void) print {
    NSLog(@"%i/%i", numerator, detorminator);
}

-(void) setNumerator: (int) n {
    numerator = n;
}

-(void) setDetorminator: (int) d {
    detorminator = d;
}

-(int) numerator {
    return numerator;
}

-(int) detorminator {
    return  detorminator;
}

@end

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        Fraction *myFraction;
        Fraction *myFraction2 = [[Fraction alloc] init];
        Fraction *myFraction3 = [Fraction new];
        // Можно сократить до одной строки
        // Fraction *myFraction = [[Fraction alloc] init];
        
        // Создание экземпляра класса Fraction
        // myFraction = [Fraction alloc];
        // myFraction = [myFraction init];
        myFraction = [[Fraction alloc] init];
        
        // Задаем дробь в значение 1/3
        [myFraction setNumerator: 1];
        [myFraction setDetorminator: 3];
        
        [myFraction2 setNumerator: 2];
        [myFraction2 setDetorminator: 3];
        
        [myFraction3 setNumerator: 4];
        [myFraction3 setDetorminator: 6];
        
        // Отображаем дробь с помощью метода print
        NSLog(@"Значение myFraction равно");
        [myFraction print];
        
        NSLog(@"Значение myFraction2 - %i/%i", [myFraction2 numerator], [myFraction2 detorminator]);
        NSLog(@"Значение myFraction3 - %i/%i", [myFraction3 numerator], [myFraction3 detorminator]);
    }
    
    return 0;
}

