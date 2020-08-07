import { BeforeAll, AfterAll, After } from 'cucumber'
import { percySnapshot } from '@percy/webdriverio'
import { VIEWPORT} from '../../config'


/** ************************************************************
 * Keep at the bottom of the file. Before() needs to run last!!*
 ************************************************************** */



BeforeAll(() => {
})

After({tags: '@snapshot'}, function (scenario) {
    browser.call(async () =>  await percySnapshot(browser, scenario.pickle.name))
})

AfterAll(() => {})




