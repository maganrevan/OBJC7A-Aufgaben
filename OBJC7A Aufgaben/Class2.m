//
//  Class2.m
//  OBJC7A Aufgaben
//
//  Created by Magnus Kruschwitz on 31.12.18.
//  Copyright © 2018 Magnus Kruschwitz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Class2.h"

@implementation listenelem

- (void) show{
    NSLog(@"%@",_data);
    if(_next != NULL){
        [_next show];
    }
}

- (void) append:(NSString *)dataNew{
    if(_listStart.listEnd.next == NULL){
        listenelem *tmpVar = [listenelem new];
        [tmpVar setData:dataNew];
        [tmpVar setStart:_listStart];
        _listStart.listEnd.next = tmpVar;
        [self markLast:tmpVar];
        
    }
}

- (void) markLast:(listenelem *)dataLast{
    _listStart.listEnd = dataLast;
}

- (void) setStart:(listenelem *)startList{
    _listStart = startList;
}

- (void) setData:(NSString *)dataNew{
    _data = dataNew;
    NSLog(@"%@ wurde erfolgreich angelegt.", _data);
}

@end
