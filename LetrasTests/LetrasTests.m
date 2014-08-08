//
//  LetrasTests.m
//  LetrasTests
//
//  Created by Desenvolvimento iOS on 8/7/14.
//  Copyright (c) 2014 Dojo-SE. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface LetrasTests : XCTestCase

@property (nonatomic, strong) NSMutableArray *listaDeNumeros;

@end

@implementation LetrasTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

    NSArray *numerosDeZeroADez = @[@"zero", @"um", @"dois", @"tres", @"quatro", @"cinco", @"seis", @"sete", @"oito", @"nove", @"dez", @"onze", @"doze", @"treze", @"quatorze", @"quinze", @"dezesseis", @"dezessete", @"dezoito", @"dezenove"];
    self.listaDeNumeros = [[NSMutableArray alloc] initWithArray:numerosDeZeroADez];
    
    NSArray *numerosDezenas = @[@"",@"", @"vinte", @"trinta", @"quarenta", @"cinquenta",
                                @"sessenta", @"setenta", @"oitenta", @"noventa"];
    
    NSString *novoNumero;
    
    for (int i = 20; i < 100; i++) {
        novoNumero = numerosDezenas[i / 10];
        if (i % 10 == 0) {
            [self.listaDeNumeros addObject:novoNumero];
        } else {
            NSString *resto = [@" e " stringByAppendingString:numerosDeZeroADez[i%10]];
            [self.listaDeNumeros addObject:[novoNumero stringByAppendingString:resto]];
        }
//        if (i % 10 >= 2) {
//            novoNumero = numerosDezenas[i/10];
//            if (i / 10 == 2) {
//                novoNumero = numerosDezenas;
//            }
//
//            if (i / 10 == 3)
//                novoNumero = @"trinta";
//            
//            if (i / 10 == 4)
//                novoNumero = @"quarenta";
//        }
//        novoNumero = [novoNumero stringByAppendingString:self.listaDeNumeros[i%10]];
//        [self.listaDeNumeros addObject:novoNumero];
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

- (void)testaVinte
{
    XCTAssertEqualObjects(self.listaDeNumeros[20], @"vinte", @"20 deveria ser vinte mas veio %@", self.listaDeNumeros[20]);
}

- (void)testaVinteETres
{
    XCTAssertEqualObjects(self.listaDeNumeros[23], @"vinte e tres", @"23 deveria ser vinte e tres um mas veio %@", self.listaDeNumeros[23]);
}

- (void)testaNoventaENove
{
    XCTAssertEqualObjects(self.listaDeNumeros[99], @"noventa e nove");
}

@end
