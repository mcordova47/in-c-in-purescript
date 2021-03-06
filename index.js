import "react"
import { main } from "./output/Main/index.js"
import "./index.css"

// HMR stuff
// For more info see: https://parceljs.org/hmr.html
if (module.hot) {
  module.hot.accept(function () {
    console.log('Reloaded, running main again')
    main()
  })
}

console.log('Starting app')
main()
