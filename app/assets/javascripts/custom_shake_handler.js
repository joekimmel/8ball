window.onload = function() {

    var myShakeEvent = new Shake({ threshold: 15, timeout: 1000 });
    myShakeEvent.start();
    window.addEventListener('shake', shakeEventDidOccur, false);
    function shakeEventDidOccur() { window.location.reload(true); }
};

