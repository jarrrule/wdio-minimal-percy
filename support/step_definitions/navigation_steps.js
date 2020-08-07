import { Given} from 'cucumber'

Given(/^I am on a search page$/, () => {
  browser.url('/search/red/')
})
