//
//  SIAGeometryTest.m
//  SIAGeometry
//
//  Created by KUROSAKI Ryota on 2014/10/06.
//  Copyright (c) 2014年 KUROSAKI Ryota. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import <SIAGeometry/SIAGeometry.h>

@interface SIAGeometryTest : XCTestCase

@end

@implementation SIAGeometryTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDegreeToRadian {
    // This is an example of a functional test case.
    XCTAssertEqualWithAccuracy(SIADegreeToRadian(0.), M_PI * 0, 0.0001);
    XCTAssertEqualWithAccuracy(SIADegreeToRadian(90.), M_PI * 0.5, 0.0001);
    XCTAssertEqualWithAccuracy(SIADegreeToRadian(180.), M_PI * 1, 0.0001);
    XCTAssertEqualWithAccuracy(SIADegreeToRadian(270.), M_PI * 1.5, 0.0001);
    XCTAssertEqualWithAccuracy(SIADegreeToRadian(360.), M_PI * 2, 0.0001);
}

- (void)testRadianToDegree {
    // This is an example of a functional test case.
    XCTAssertEqualWithAccuracy(SIARadianToDegree(M_PI * 0), 0, 0.0001);
    XCTAssertEqualWithAccuracy(SIARadianToDegree(M_PI * 0.5), 90, 0.0001);
    XCTAssertEqualWithAccuracy(SIARadianToDegree(M_PI * 1), 180, 0.0001);
    XCTAssertEqualWithAccuracy(SIARadianToDegree(M_PI * 1.5), 270, 0.0001);
    XCTAssertEqualWithAccuracy(SIARadianToDegree(M_PI * 2), 360, 0.0001);
}

- (void)testPointToPoint
{
    // XCTAssertEqual can't compare struct???
    XCTAssertEqualObjects([NSValue valueWithCGRect:SIACGRectMakePointToPoint(CGPointMake(80, 100), CGPointMake(200, 300))],
                          [NSValue valueWithCGRect:CGRectMake(80, 100, 120, 200)]);

    XCTAssertEqualObjects([NSValue valueWithCGRect:SIACGRectMakePointToPoint(CGPointMake(500, 350), CGPointMake(200, 300))],
                          [NSValue valueWithCGRect:CGRectMake(200, 300, 300, 50)]);
}

- (void)testMove
{
    XCTAssertTrue(CGRectEqualToRect(SIACGRectMove(CGRectMake(10, 20, 300, 400), 100., 100., 1.0, 1.0),
                                    CGRectMake(-200, -300, 300, 400)));
    XCTAssertTrue(CGRectEqualToRect(SIACGRectMove(CGRectMake(10, 20, 300, 400), 100., 100., 0.2, 0.2),
                                    CGRectMake(40, 20, 300, 400)));
}

- (void)testExpand
{
    XCTAssertTrue(CGRectEqualToRect(SIACGRectExpand(CGRectMake(10, 20, 300, 400), 50., 200., 0.5, 0.5),
                                    CGRectMake(-15, -80, 350, 600)));
}

- (void)testResize
{
    XCTAssertTrue(CGRectEqualToRect(SIACGRectResize(CGRectMake(10, 20, 300, 400), 50., 200., 0.5, 1.0),
                                    CGRectMake(135, 220, 50, 200)));
}

- (void)testGetPoint
{
    XCTAssertEqual(SIACGRectGetPointX(CGRectMake(10, 20, 300, 400), 0.5), 160.);
    XCTAssertEqual(SIACGRectGetPointX(CGRectMake(10, 20, 300, 400), -1.0), -290.);
    
    XCTAssertEqual(SIACGRectGetPointY(CGRectMake(10, 20, 300, 400), 0.7), 300.);
    XCTAssertEqual(SIACGRectGetPointY(CGRectMake(10, 20, 300, 400), 0.1), 60.);

    XCTAssertTrue(CGPointEqualToPoint(SIACGRectGetPoint(CGRectMake(10, 20, 300, 400), 0.0, 1.0), CGPointMake(10., 420.)));
    XCTAssertTrue(CGPointEqualToPoint(SIACGRectGetPoint(CGRectMake(10, 20, 300, 400), 0.5, 0.5), CGPointMake(160., 220.)));
}

- (void)testContentMode
{
    CGRect rect = CGRectMake(0, 0, 40, 80);
    CGRect parentRect = CGRectMake(100, 200, 400, 300);
    XCTAssertTrue(CGRectEqualToRect(SIACGRectContentMode(rect, parentRect, UIViewContentModeScaleAspectFit),
                                    CGRectMake(225, 200, 150, 300)));
}

@end
