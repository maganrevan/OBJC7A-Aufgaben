//
//  Class.h
//  OBJC7A Aufgaben
//
//  Created by Magnus Kruschwitz on 30.12.18.
//  Copyright © 2018 Magnus Kruschwitz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface television : NSObject

//properties
@property (nonatomic) int program, vol;
@property BOOL state;

//functions
- (id)   init;
- (int)  getProgram;
- (void) setProgram:(int) newValue;
- (int)  getVol;
- (void) setVol:(int) newValue;
- (void) changeState;
- (BOOL) getState;
- (void) printState;

@end

@interface remote : NSObject

//properties
@property television *tel;

//functions
- (void) connectWith:(television*) subTel;
- (void) pushButton:(int) btn;

@end
