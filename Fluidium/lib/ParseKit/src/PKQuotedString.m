//
//  PKQuotedString.m
//  ParseKit
//
//  Created by Todd Ditchendorf on 7/13/08.
//  Copyright 2009 Todd Ditchendorf. All rights reserved.
//

#import <ParseKit/PKQuotedString.h>
#import <ParseKit/PKToken.h>

@implementation PKQuotedString

+ (id)quotedString {
    return [[[self alloc] initWithString:nil] autorelease];
}


- (BOOL)qualifies:(id)obj {
    PKToken *tok = (PKToken *)obj;
    return tok.isQuotedString;
}

@end
