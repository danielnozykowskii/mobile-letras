//
//  LetrasTests.m
//  LetrasTests
//
//  Created by Desenvolvimento iOS on 8/7/14.
//  Copyright (c) 2014 Dojo-SE. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface LetrasTests : XCTestCase

@property (nonatomic, strong) NSMutableDictionary *dicionarioDeNumeros;

@end

@implementation LetrasTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.dicionarioDeNumeros = @{@1: @"um",
                                 @2: @"dois", 
                                 @3: @"tres"};
    
    for (int i = 1; i < 11; i++) {
        NSNumber *numero = [NSNumber numberWithInt:i];
    }
    
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testaUm
{
    XCTAssertEqual(self.dicionarioDeNumeros[@1], @"um", @"@1 deveria ser um mas veio %@", self.dicionarioDeNumeros[@1]);
}

- (void)testaDois
{
    XCTAssertEqual(self.dicionarioDeNumeros[@2], @"dois", @"@1 deveria ser um mas veio %@", self.dicionarioDeNumeros[@2]);
}

- (void)testaTres
{
    XCTAssertEqual(self.dicionarioDeNumeros[@3], @"tres", @"@1 deveria ser um mas veio %@", self.dicionarioDeNumeros[@3]);
}

@end
