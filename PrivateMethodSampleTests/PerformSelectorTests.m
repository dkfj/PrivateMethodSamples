//
//  PerformSelectorTests.m
//  PrivateMethodSample
//
//  Copyright (c) 2012年 dkfj. All rights reserved.
//

#import "PerformSelectorTests.h"

@implementation PerformSelectorTests

- (void)setUp
{
    NSLog(@"%@ setUp", self.name);
    [super setUp];
    
    exampleClass = [[ExampleClass alloc] init];
    STAssertNotNil(exampleClass, @"Cannot create ExampleClass instance");
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testPrivateMethod
{
    STAssertFalse([exampleClass.exampleProperty isEqualToString:@"b"], @"not equal b");
    [exampleClass performSelector:@selector(privateMethod)];
    STAssertFalse([exampleClass.exampleProperty isEqualToString:@"a"], @"not equal a");
    STAssertTrue([exampleClass.exampleProperty isEqualToString:@"b"], @"equal b");
    
    //Test For privateMethod:(NSString *) aString
    [exampleClass performSelector:@selector(privateMethod:) withObject:@"c"];
    STAssertFalse([exampleClass.exampleProperty isEqualToString:@"b"], @"not equal b");
    STAssertTrue([exampleClass.exampleProperty isEqualToString:@"c"], @"equal c");
    
    //Test For privateMethod:(NSString *)aString second:(NSString *)bString
    [exampleClass performSelector:@selector(privateMethod:second:) withObject:@"c" withObject:@"d"];
    STAssertFalse([exampleClass.exampleProperty isEqualToString:@"c"], @"not equal c");
    STAssertTrue([exampleClass.exampleProperty isEqualToString:@"d"], @"equal d");
}
@end
