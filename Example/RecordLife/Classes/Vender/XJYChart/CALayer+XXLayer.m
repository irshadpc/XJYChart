//
//  CALayer+XXLayer.m
//  RecordLife
//
//  Created by 谢俊逸 on 24/03/2017.
//  Copyright © 2017 谢俊逸. All rights reserved.
//

#import "CALayer+XXLayer.h"
#import <objc/runtime.h>
@implementation CALayer (XXLayer)

//selectIdx
static char kAssociatedObjectKey;


- (void)setSelectIdxNumber:(id)selectIdxNumber {
    objc_setAssociatedObject(self, &kAssociatedObjectKey, selectIdxNumber, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)selectIdxNumber {
    return objc_getAssociatedObject(self, &kAssociatedObjectKey);
}


@end
