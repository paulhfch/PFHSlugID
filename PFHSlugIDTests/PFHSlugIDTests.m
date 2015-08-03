//
//  PFHSlugIDTests.m
//  PFHSlugID
//
//  Created by Fangchen Huang on 2015-08-02.
//  Copyright (c) 2015 Fangchen Huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "PFHSlugID.h"

@interface PFHSlugIDTests : XCTestCase

@end

@implementation PFHSlugIDTests

- (void)testSpecialCharacters {
    NSUUID *uuid = [[NSUUID alloc]initWithUUIDString:@"804f3fc8-dfcb-4b06-89fb-aefad5e18754"];
    NSString *slug = [PFHSlugID encode:uuid];
    
    XCTAssertFalse( [self string: slug contains: @"/"] );
    XCTAssertFalse( [self string: slug contains: @"+"] );
    XCTAssertFalse( [self string: slug contains: @"="] );
}

- (void)testEncodeDecode {
    NSUUID *uuid = [NSUUID UUID];
    NSString *slug = [PFHSlugID encode:uuid];
    
    NSUUID *decodedUuid = [PFHSlugID decode:slug];
    
    XCTAssertTrue( [decodedUuid isEqual:uuid] );
}

#pragma mark Utils
- (BOOL)string: (NSString *)string contains: (NSString *)query {
    return [string rangeOfString:query].location != NSNotFound;
}

@end
