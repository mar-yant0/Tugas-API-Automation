function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = '';
  }
  var config = {
    env: env,
    username: 'belajarKuy',
    password: 'cobajadulu',
    baseURL: 'https://petstore.swagger.io/'
  }
  if (env == 'dev') {
    config.baseURL = 'https://petstore.swagger.io/dev'
  } else if (env == 'stg') {
    config.baseURL = 'https://petstore.swagger.io/stg'
  }

  karate.configure('connectTimeout',30000)
  karate.configure('readTimeout',30000)

  return config;
}