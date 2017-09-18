var Elm = require('../elm/Main');

var elm = Elm.Main.worker();

function increment() {
    elm.ports.increment.send(null);
};

elm.ports.println.subscribe(function(str) {
    console.log(str);
});

increment();
increment();
increment();
increment();

