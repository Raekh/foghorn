const mongoose = require('mongoose')

const Schema = mongoose.Schema

const partySchema = new Schema({
	name    : { type: String, required: true },
	game    : {
		type : Schema.Types.ObjectId,
		ref  : 'Game'
	},
	creator : {
		type : Schema.Types.ObjectId,
		ref  : 'User'
	},
	members : [
		{
			type : Schema.Types.ObjectId,
			ref  : 'User'
		}
	]
})

module.exports = mongoose.model('Party', partySchema)
