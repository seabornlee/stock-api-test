function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	myVarName: 'someValue',
	baseURL: ''
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
	config.baseURL = 'http://localhost'
  } else if (env == 'sit') {
	config.baseURL = 'http://111.231.101.187:5000'
  }
  return config;
}