
phantom.onError = function(msg, trace) {
    var msgStack = ['PHANTOM ERROR: ' + msg];
    if (trace && trace.length) {
        msgStack.push('TRACE:');
        trace.forEach(function(t) {
            msgStack.push(' -> ' + (t.file || t.sourceURL) + ': ' + t.line + (t.function ? ' (in function ' + t.function +')' : ''));
        });
    }
    console.error(msgStack.join('\n'));
    phantom.exit(1);
};


var page = require('webpage').create();

page.onResourceRequested = function (request) {
    console.log('[PRB] loading:', request.url, JSON.stringify(request));
};

page.onResourceReceived = function (response) {
    console.log('[PRB] loaded:', response.status, response.url, JSON.stringify(response));
};

page.open('http://google.com/analytics', function(status) {
    setTimeout(function(){
        /*var coords = page.evaluate(function(){
         return document.querySelector('a').getBoundingClientRect();
         });
         page.sendEvent('click', coords.left, coords.top);*/
        var js = page.evaluate(function () {
            return document;
        });
        console.log(js.all[0].outerHTML);
        console.log("[PRB] status:", status);
        phantom.exit();
    }, 2000);
});