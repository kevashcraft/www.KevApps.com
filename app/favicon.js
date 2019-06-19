const jdenticon = require('jdenticon')
const fs = require('fs')

let size = 2400
let hash = 'www.KevApps.com'
let png = jdenticon.toPng(hash, size);

fs.writeFileSync('public/favicon.ico', png);
