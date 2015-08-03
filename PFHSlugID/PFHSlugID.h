//
//  PFHSlugID.h
//  PFHSlugID
//
//  Created by Fangchen Huang on 2015-08-02.
//  Copyright (c) 2015 Fangchen Huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFHSlugID : NSObject

/**
 Encodes UUID as a short 22 byte slug
 
 @param uuid an NSUUID instance
 @return a short 22 byte slug ID
 */
+ (NSString *) encode: (NSUUID *)uuid;

/**
 Decodes 22 byte slug to UUID
 
 @param slug a short 22 byte slug
 @return uuid an NSUUID instance
 */
+ (NSUUID *) decode: (NSString *)slug;

/**
 Generates a v4 (random) uuid and encodes it to a slug
 */
+ (NSString *)v4;

@end
