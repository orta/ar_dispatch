#import <ar_dispatch/ar_dispatch.h>

// ar_dispatch_after(NSTimeInterval time, dispatch_block_t block);
// ar_dispatch_after_on_queue(NSTimeInterval time, dispatch_queue_t queue, dispatch_block_t block);
// ar_dispatch_async(dispatch_block_t block);
// ar_dispatch_main_queue(dispatch_block_t block);
// ar_dispatch_on_queue(dispatch_queue_t queue, dispatch_block_t block);

SpecBegin(Dispatches)

describe(@"in test context", ^{
    __block BOOL ran = NO;

    before(^{
        ARDispatchIsRunningInTests = YES;
        ran = NO;
    });


    it(@"does ar_dispatch_after sync", ^{

        ar_dispatch_after(10, ^{
            ran = YES;
        });
        expect(ran).to.beTruthy();
    });

    it(@"does ar_dispatch_main_queue sync", ^{

        ar_dispatch_main_queue( ^{
            ran = YES;
        });
        expect(ran).to.beTruthy();
    });

    it(@"does ar_dispatch_async sync", ^{

        ar_dispatch_async(^{
            ran = YES;
        });
        expect(ran).to.beTruthy();
    });

});

describe(@"in app context", ^{
    __block BOOL ran = NO;

    before(^{
        ARDispatchIsRunningInTests = NO;
        ran = NO;
    });

    it(@"does ar_dispatch_after sync", ^{

        ar_dispatch_after(10, ^{
            ran = YES;
        });
        expect(ran).to.beFalsy();
    });

    it(@"does ar_dispatch_main_queue sync", ^{

        ar_dispatch_main_queue( ^{
            ran = YES;
        });
        expect(ran).to.beFalsy();
    });

    it(@"does ar_dispatch_async sync", ^{

        ar_dispatch_async(^{
            ran = YES;
        });
        expect(ran).to.beFalsy();
    });
    
});

SpecEnd
