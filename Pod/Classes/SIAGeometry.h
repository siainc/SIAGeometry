//
//  SIAGeometry.h
//  SIATools
//
//  Created by KUROSAKI Ryota on 2011/11/21.
//  Copyright (c) 2011-2014 SI Agency Inc. All rights reserved.
//

#ifndef _SIAGeometry_h
#define _SIAGeometry_h

#import <Foundation/Foundation.h>

UIKIT_EXTERN float SIADegreeToRadian(float degree);
UIKIT_EXTERN float SIARadianToDegree(float radian);

UIKIT_EXTERN CGRect SIACGRectMakePointToPoint(CGPoint point1, CGPoint point2);
UIKIT_EXTERN CGRect SIACGRectIntoRect(CGRect inner, CGRect outer);

UIKIT_EXTERN CGRect SIACGRectMoveOriginX(CGRect rect, CGFloat x);
UIKIT_EXTERN CGRect SIACGRectMoveOriginY(CGRect rect, CGFloat y);
UIKIT_EXTERN CGRect SIACGRectMoveOrigin(CGRect rect, CGFloat x, CGFloat y);
UIKIT_EXTERN CGRect SIACGRectMoveX(CGRect rect, CGFloat x, CGFloat relativeX);
UIKIT_EXTERN CGRect SIACGRectMoveY(CGRect rect, CGFloat y, CGFloat relativeY);
UIKIT_EXTERN CGRect SIACGRectMove(CGRect rect, CGFloat x, CGFloat y, CGFloat relativeX, CGFloat relativeY);

UIKIT_EXTERN CGRect SIACGRectExpandWidth(CGRect rect, CGFloat widthAmount, CGFloat relativeX);
UIKIT_EXTERN CGRect SIACGRectExpandHeight(CGRect rect, CGFloat heightAmount, CGFloat relativeY);
UIKIT_EXTERN CGRect SIACGRectExpand(CGRect rect, CGFloat widthAmount, CGFloat heightAmount, CGFloat relativeX, CGFloat relativeY);
UIKIT_EXTERN CGRect SIACGRectResizeWidth(CGRect rect, CGFloat width, CGFloat relativeX);
UIKIT_EXTERN CGRect SIACGRectResizeHeight(CGRect rect, CGFloat height, CGFloat relativeY);
UIKIT_EXTERN CGRect SIACGRectResize(CGRect rect, CGFloat width, CGFloat height, CGFloat relativeX, CGFloat relativeY);

UIKIT_EXTERN CGFloat SIACGRectGetPointX(CGRect rect, CGFloat relativeX);
UIKIT_EXTERN CGFloat SIACGRectGetPointY(CGRect rect, CGFloat relativeY);
UIKIT_EXTERN CGPoint SIACGRectGetPoint(CGRect rect, CGFloat relativeX, CGFloat relativeY);

UIKIT_EXTERN CGRect SIACGRectContentMode(CGRect rect, CGRect parentRect, UIViewContentMode contentMode);

#endif
