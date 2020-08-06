const DataLoader = require('dataloader')

const userLoader = new DataLoader(eventIds => {
    return User.find({_id: {$in: eventIds} })
})

const transformUser = user => {
    return {
        ...user._doc,
        password: null
    }
}