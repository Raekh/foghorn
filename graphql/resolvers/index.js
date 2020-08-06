const authResolver = require('./auth')
const auth = require('./auth')

const rootResolver = {
	...authResolver
}

module.exports = rootResolver
