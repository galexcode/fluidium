//
//  PKXmlEndTag.m
//  ParseKit
//
//  Created by Todd Ditchendorf on 8/20/08.
//  Copyright 2009 Todd Ditchendorf. All rights reserved.
//

#import "TDXmlEndTag.h"
#import "TDXmlToken.h"

@implementation TDXmlEndTag

+ (id)endTag {
    return [[[self alloc] initWithString:nil] autorelease];
}


+ (id)endTagWithString:(NSString *)s {
    return [[[self alloc] initWithString:s] autorelease];
}


- (id)initWithString:(NSString *)s {
    self = [super initWithString:s];
    if (self) {
        self.tok = [TDXmlToken tokenWithTokenType:TDTT_XML_END_TAG stringValue:s];
    }
    return self;
}


- (void)dealloc {
    [super dealloc];
}


- (BOOL)qualifies:(id)obj {
    TDXmlToken *other = (TDXmlToken *)obj;
    
    if (string.length) {
        return [tok isEqual:other];
    } else {
        return other.isEndTag;
    }
}

@end
