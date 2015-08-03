//
//  PFHSlugID.m
//  PFHSlugID
//
//  Created by Fangchen Huang on 2015-08-02.
//  Copyright (c) 2015 Fangchen Huang. All rights reserved.
//

#import "PFHSlugID.h"

@implementation PFHSlugID

+ (NSString *) encode: (NSUUID *)uuid {
    uuid_t uuidBytes;
    [uuid getUUIDBytes:uuidBytes];
    
    NSData *data = [NSData dataWithBytes:uuidBytes length:16];
    NSString *base64String = [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    
    return [[[base64String stringByReplacingOccurrencesOfString:@"+" withString:@"-"] // Replace + with - (see RFC 4648, sec. 5)
             stringByReplacingOccurrencesOfString:@"/" withString:@"_"] // Replace / with _ (see RFC 4648, sec. 5)
            stringByReplacingOccurrencesOfString:@"=" withString:@""]; // Drop '==' padding
}

+ (NSUUID *) decode: (NSString *)slug {
    NSString *base64String = [[[slug stringByReplacingOccurrencesOfString:@"-" withString:@"+"]
                               stringByReplacingOccurrencesOfString:@"_" withString:@"/"]
                               stringByAppendingString:@"=="];
    NSData *data = [[NSData alloc]initWithBase64EncodedString:base64String options:0];
    
    return [[NSUUID alloc]initWithUUIDBytes:[data bytes]];
}

+ (NSString *)v4 {
    return [PFHSlugID encode:[NSUUID UUID]];
}

@end
