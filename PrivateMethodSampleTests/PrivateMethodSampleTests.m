//
//  PrivateMethodSampleTests.m
//  PrivateMethodSampleTests
//
//  Copyright (c) 2012年 dkfj. All rights reserved.
//

#import "PrivateMethodSampleTests.h"
#import "ExampleClassExtension.h"

@implementation PrivateMethodSampleTests

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

- (void)testPublicMethod
{
    STAssertFalse([exampleClass.exampleProperty isEqualToString:@"a"], @"not equal a");
    [exampleClass publicMethod];
    STAssertTrue([exampleClass.exampleProperty isEqualToString:@"a"], @"equal a");
    STAssertFalse([exampleClass.exampleProperty isEqualToString:@"b"], @"not equal b");
}

- (void)testPrivateMethod
{
    STAssertFalse([exampleClass.exampleProperty isEqualToString:@"b"], @"not equal b");
    [exampleClass privateMethod];
    STAssertFalse([exampleClass.exampleProperty isEqualToString:@"a"], @"not equal a");
    STAssertTrue([exampleClass.exampleProperty isEqualToString:@"b"], @"equal b");
}

@end
