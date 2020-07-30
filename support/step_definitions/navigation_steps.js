import { Given} from 'cucumber'

const { percySnapshot } = require('@percy/webdriverio')


Given(/^I am on a search page$/, () => {
  browser.url('/search/red/')
  browser.pause(5000)
  percySnapshot(browser, 'search page')
})
