
// Send the merged config to wdio
exports.config =  {
  specFileRetries: 0,
  specs: [ './features/**/example.feature' ],
  maxInstances: 10,
  capabilities: [
    {
      browserName: 'chrome',
      browserVersion: '83.0',
      'argos:type': 'Windows 10 Chrome 83.0',
    }
  ],
  cucumberOpts: {
    tagExpression: '@test and not @wip and not @ignoredesktop and not @ignoreStub and not @ignoreChrome',
    require: [
      './support/step_definitions/*_steps.js',
      './support/step_definitions/hooks.js'
    ],
    backtrace: true,
    requireModule: [ '@babel/register' ],
    dryRun: false,
    failFast: false,
    format: [ 'pretty' ],
    colors: true,
    snippets: false,
    source: false,
    profile: [],
    strict: false,
    timeout: 120000,
    ignoreUndefinedDefinitions: false
  },
  user: undefined,
  key: undefined,
  services: [ 'selenium-standalone' ],
  sync: true,
  logLevel: 'error',
  coloredLogs: true,
  baseUrl: 'http://www.argos.co.uk',
  waitforTimeout: 90000,
  connectionRetryTimeout: 90000,
  connectionRetryCount: 3,
  framework: 'cucumber'
}
