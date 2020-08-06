const { buildSchema } = require('graphql')

module.exports = buildSchema(`
    type User {
        _id: ID!
        nick: String
        email: String!
        avatar: Image
        password: String
    }

    type Game {
        _id: ID!
        name: String!
        logo: Image!
    }

    type Party {
        _id: ID!
        name: String!
        creator: User!
        members: [User!]!
        game: Game!
    }

    type AuthData {
        userId : ID!
        token: String!
        tokenExpiration: Int!
    }

    type Image {
        _id: ID!
        filename: String!
    }

    input UserInput {
        email: String!
        password: String!
    }

    input GameInput {
        name: String!
    }

    input PartyInput {
        name: String!
        creator: String!
        game: GameInput!
    }

    type RootQuery {
        users: [User!]!
        games: [Game!]!
        parties: [Party!]!
        login(email: String!, password: String!): AuthData!
    }

    type RootMutation {
        createUser(userInput: UserInput): User
        createGame(gameInput: GameInput): Game
        createParty(partyInput: PartyInput): Party
    }

    schema {
        query: RootQuery
        mutation: RootMutation
    }
`)
