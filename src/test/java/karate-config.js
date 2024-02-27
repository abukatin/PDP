function fn(){
    var env = karate.env;
    karate.log("karate env is", env)
    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);
    // karate.configure('headers', {'key1': 'value1','key2': 'value2'});
    karate.configure('connectTimeout', 30000);
    karate.configure('readTimeout', 30000);
    karate.configure('report', {showLog: true});

    // karate.configure('driver', {
    //     type: 'chrome', addOptions: ["--remote-allow-origins=*"]
    // });

    // karate.configure('driver', {
    //     type: 'chromedriver',
    //     executable: 'c:\AutomatDriver\chromedriver_win32\chrome_proxy.exe'
    // });

 karate.configure('driver', {
     type: 'geckodriver',
     executable: 'c:\\AutomatDriver\\geckodriver-v0.33.0-win64\\geckodriver.exe'
 });
    if (!env) {
        env = 'test'
    }
    var config = {
        env: env
    }
    if (env == 'test'){
        config.baseUrl = "https://reqres.in"
    } else  if (env == 'dev'){
        config.baseUrl = "https://reqres.if"
    }
    return config;
}