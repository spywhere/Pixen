//
//  NSMutableArray+ReorderingAdditions.m
//  Pixen
//
//  Created by Ian Henderson on 10.08.05.
//  Copyright 2005 Pixen. All rights reserved.
//

#import "NSMutableArray+ReorderingAdditions.h"


@implementation NSMutableArray(ReorderingAdditions)

- (void)moveObjectAtIndex:(NSUInteger)initialIndex toIndex:(NSUInteger)targetIndex
{
	if (targetIndex != initialIndex) {
		id obj = [[self objectAtIndex:initialIndex] retain];
		[self removeObjectAtIndex:initialIndex];
		
		if (targetIndex >= [self count]) {
			[self addObject:obj];
		}
		else {
			[self insertObject:obj atIndex:targetIndex];
		}
		
		[obj release];
	}
}

@end
