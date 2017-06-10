
var scope = 'global scope';

function checkscope() {
    var scope = "local scope";
    function f() {
        return scope;
    }
    return f;
}
var ret = checkscope()();
console.log(ret);

var uniqueInteger = (function(){
    var counter = 0;
    return function() {
        return counter++;
    }
}())


function counter() {
    var n = 0;
    return {
        count: function() {
            return n++;
        },
        reset: function() {
            n = 0;
        }
    }
}

var c = counter(), d = counter();

c.count();
d.count();


























