//
//  ExampleClass.h
//  PrivateMethodSample
//
//  Copyright (c) 2012年 dkfj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExampleClass : NSObject {
    NSString *_exampleProperty;
}

- (void)publicMethod;

@property (nonatomic, retain) NSString * exampleProperty;


@end
