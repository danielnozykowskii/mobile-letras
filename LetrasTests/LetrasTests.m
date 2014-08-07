//
//  LetrasTests.m
//  LetrasTests
//
//  Created by Desenvolvimento iOS on 8/7/14.
//  Copyright (c) 2014 Dojo-SE. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface LetrasTests : XCTestCase

@property (nonatomic, strong) NSArray *listaDeNumeros;

@end

@implementation LetrasTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.listaDeNumeros = @[@"zero", @"um", @"dois", @"tres", @"quatro", @"cinco",
                            ];
    
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
    XCTAssertEqual(self.listaDeNumeros[1], @"um", @"@1 deveria ser um mas veio %@", self.listaDeNumeros[1]);
}

- (void)testaDois
{
    XCTAssertEqual(self.listaDeNumeros[2], @"dois", @"@1 deveria ser um mas veio %@", self.listaDeNumeros[2]);
}

- (void)testaTres
{
    XCTAssertEqual(self.listaDeNumeros[3], @"tres", @"@1 deveria ser um mas veio %@", self.listaDeNumeros[3]);
}

@end
