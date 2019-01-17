//
//  Aufgabe_2_3.m
//  OBJC7A Aufgaben
//
//  Created by Magnus Kruschwitz on 17.01.19.
//  Copyright © 2019 Magnus Kruschwitz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //eine for-Schleife
        for (int zahl = 1; zahl <= 20; zahl++)
            NSLog(@"%d", zahl);
        //eine while-Schleife
        int zahl = 0;
        while (zahl <= 20) {
            NSLog(@"%d", zahl);
            zahl++; }
        zahl = 0;
        //eine do...while-Schleife
        do {
            NSLog(@"%d", zahl);
            zahl++;
        } while (zahl <= 20);
    }
    return 0;
}
