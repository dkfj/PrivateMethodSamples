//
//  ExampleClass.m
//  PrivateMethodSample
//
//  Copyright (c) 2012年 dkfj. All rights reserved.
//

#import "ExampleClass.h"

@interface ExampleClass(private)
- (void) privateMethod;
- (void) privateMethod:(NSString *)aString;
- (void) privateMethod:(NSString *)aString second:(NSString *)bString;
@end

@implementation ExampleClass
@synthesize exampleProperty = _exampleProperty;

- (void)publicMethod {
    _exampleProperty = @"a";
}

- (void)privateMethod {
    NSLog(@"privateMethod");
    _exampleProperty = @"b";
}

- (void)privateMethod:(NSString *) aString {
    NSLog(@"privateMethod:(NSString *) aString");
    _exampleProperty = aString;
}

- (void) privateMethod:(NSString *)aString second:(NSString *)bString {
    NSLog(@"privateMethod:(NSString *)aString second:(NSString *)bString");
    _exampleProperty = bString;
}

@end
