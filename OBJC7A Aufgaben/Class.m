//
//  Class.m
//  OBJC7A Aufgaben
//
//  Created by Magnus Kruschwitz on 30.12.18.
//  Copyright © 2018 Magnus Kruschwitz. All rights reserved.
//

#import "Class.h"

@implementation television

- (id) init{
    self = [super init];
    if(self != nil){
        _program = 1;
        _vol = 5;
        _state = FALSE;
    }
    return self;
}

- (int) getProgram{
    return _program;
}

- (void) setProgram:(int)newValue{
    if(_state){
        if(newValue <= 0 || newValue >= 99){
            _program = 99;
        }
        else{
            _program = newValue;
        }
    }
}

- (int) getVol{
    return _vol;
}

- (void) setVol:(int)newValue{
    if(_state){
        if(newValue <= 0){
            _vol = 0;
        }
        else{
            _vol = newValue;
        }
    }
}

- (void) printState{
    if(!_state){
        NSLog(@"Der Fernseher ist ausgeschalten.");
    }
    else{
        NSLog(@"Der Fernseher ist angeschalten.");
        NSLog(@"Die Lautstärke beträgt: %d.", [self getVol]);
        NSLog(@"Das Program beträgt: %d.", [self getProgram]);
    }
}

- (BOOL) getState{
    return _state;
}

- (void) changeState{
    if(!_state){
        _state = TRUE;
        NSLog(@"Schalte den Fernseher ein.");
    }
    else{
        _state = FALSE;
        NSLog(@"Schalte den Fernseher aus.");
    }
}

@end

@implementation remote

- (void) connectWith:(television *)subTel{
    _tel = subTel;
    NSLog(@"Die Fernbedienung wurde erfolgreich verbunden.");
    [_tel printState];
}

- (void) pushButton:(int)btn{
    if(_tel != nil){
        switch(btn){
            case 1:
                //Turn on and off
                [_tel changeState];
                break;
            case 2:
                //increase program 1
                NSLog(@"Schalte das Program rauf");
                [_tel setProgram:([_tel getProgram] + 1)];
                [_tel printState];
                break;
            case 3 :
                //decrease program 1
                NSLog(@"Schalte das Program runter");
                [_tel setProgram:([_tel getProgram] - 1)];
                [_tel printState];
                break;
            case 4 :
                //increase volume 1
                NSLog(@"Erhöhe die Lautstärke");
                [_tel setVol:([_tel getVol] + 1)];
                [_tel printState];
                break;
            case 5 :
                //decrease volume 1
                NSLog(@"Verringere die Lautstärke");
                [_tel setVol:([_tel getVol] - 1)];
                [_tel printState];
                break;
            default:
                NSLog(@"Leider keine bekannte Eingabe.");
                break;
        }
    }
}

@end
