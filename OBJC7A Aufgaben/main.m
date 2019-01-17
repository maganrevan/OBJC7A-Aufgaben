//
//  main.m
//  OBJC7A Aufgaben
//
//  Created by Magnus Kruschwitz on 16.12.18.
//  Copyright © 2018 Magnus Kruschwitz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Class.h"
#import "Class2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*NSLog(@"Hello, World!");
        NSLog(@"Dies ist ein Test");
        
        int i = 10;
        
        if(i > 0){
            NSLog(@"blubb");
        }
        
        for(int i2 = 0; i2 <= 10; i2++){
            NSLog(@"%d",i2);
        }*/
        
        /*Autoklasse *auto1 = [[Autoklasse alloc] init];
        
        Autoklasse *auto2 = [Autoklasse new];*/
        
        /* Aufgabe 7.1
        television *glotze = [television new];
        remote *knipse = [remote new];
        
        [knipse connectWith:glotze];
        [knipse pushButton:1];
        [knipse pushButton:2];
        [knipse pushButton:3];
        [knipse pushButton:4];
        [knipse pushButton:5];
        [knipse pushButton:1];
         */
        
        listenelem *test = [listenelem new];
        
        [test setData:@"Element 1"];
        
        [test setStart:test];
        
        [test markLast:test];
        
        
        for(int i = 2; i < 10; i++){
            [test append:[NSString stringWithFormat:@"Element %d", i]];
        }
        
        [test show];
        
        
    }
    return 0;
}
